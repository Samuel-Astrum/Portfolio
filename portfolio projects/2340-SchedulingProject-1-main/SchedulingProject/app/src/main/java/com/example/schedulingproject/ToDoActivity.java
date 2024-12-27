package com.example.schedulingproject;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;


import com.example.schedulingproject.Adapter.ToDoAdapter;
import com.example.schedulingproject.Model.ToDoModel;
import com.example.schedulingproject.Utils.DataBaseHelper;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.mancj.materialsearchbar.MaterialSearchBar;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ToDoActivity extends AppCompatActivity implements OnDialogCloseListener {
    private RecyclerView mRecyclerview;
    private FloatingActionButton fab;
    private FloatingActionButton fabH;
    private FloatingActionButton fabexam; // new
    private MaterialSearchBar materialSearchBar; // new
    private List<String> suggestList = new ArrayList<>(); // new
    private DataBaseHelper myDB;
    private List<ToDoModel> mList;
    private ToDoAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_todo);

        mRecyclerview = findViewById(R.id.recyclerview);
        fab = findViewById(R.id.fab);
        fabH = findViewById(R.id.fabhome);
        fabexam = findViewById(R.id.fabexam); // new
        myDB = new DataBaseHelper(ToDoActivity.this);
        mList = new ArrayList<>();
        adapter = new ToDoAdapter(myDB, ToDoActivity.this);

        mRecyclerview.setHasFixedSize(true);
        mRecyclerview.setLayoutManager(new LinearLayoutManager(this));
        mRecyclerview.setAdapter(adapter);

        // new, setup searchbar
        materialSearchBar = (MaterialSearchBar)findViewById(R.id.search_bar); //new
        materialSearchBar.setHint("Search..");
        materialSearchBar.setCardViewElevation(10);
        loadSuggestList();
        materialSearchBar.addTextChangeListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                List<String> suggest = new ArrayList<>();
                for (String search: suggestList) {
                    if(search.toLowerCase().contains(materialSearchBar.getText().toLowerCase())) {
                        suggest.add(search);
                    }
                }
                materialSearchBar.setLastSuggestions(suggest);
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });
        materialSearchBar.setOnSearchActionListener(new MaterialSearchBar.OnSearchActionListener() {
            @Override
            public void onSearchStateChanged(boolean enabled) {
                if(!enabled) {
                    //adapter = new ToDoAdapter(getBaseContext(), myDB.getAllTasks());
                    mRecyclerview.setAdapter(adapter);
                    adapter.notifyDataSetChanged();
                }
            }

            @Override
            public void onSearchConfirmed(CharSequence text) {
                startSearch(text.toString());
            }

            @Override
            public void onButtonClicked(int buttonCode) {

            }
        });

        //Collections.reverse(mList);
        mList = myDB.getAllTasks();

        adapter.setTasks(mList);

        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AddNewTask.newInstance().show(getSupportFragmentManager(), AddNewTask.TAG);

            }
        });

        fabexam.setOnClickListener(new View.OnClickListener() { //new
            @Override
            public void onClick(View v) {
                AddNewExam.newInstance().show(getSupportFragmentManager(), AddNewExam.TAG);
            }
        });
        fabH.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(ToDoActivity.this, FirstActivity.class);
                startActivity(intent);
            }
        });
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new RecyclerViewTouchHelper(adapter));
        itemTouchHelper.attachToRecyclerView(mRecyclerview);
    }

    @Override
    public void onDialogClose(DialogInterface dialogInterface) {
        mList = myDB.getAllTasks();
        //Collections.reverse(mList);
        adapter.setTasks(mList);
        adapter.notifyDataSetChanged();
    }

    private void loadSuggestList() { //new
        suggestList = myDB.getStringTasks();
        materialSearchBar.setLastSuggestions(suggestList);
    }

    private void startSearch(String text) { //new
        //adapter = new ToDoAdapter(this, myDB.getTaskByString(text));
        //mRecyclerview.setAdapter(adapter);
        List<ToDoModel> filteredTasks = myDB.getTaskByString(text);
        adapter.setTasks(filteredTasks);
        adapter.notifyDataSetChanged();
    }
}