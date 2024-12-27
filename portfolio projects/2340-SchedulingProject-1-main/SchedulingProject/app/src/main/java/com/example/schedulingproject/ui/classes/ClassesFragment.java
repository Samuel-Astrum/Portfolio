package com.example.schedulingproject.ui.classes;

import static com.example.schedulingproject.ClassActivity.newAdded;
import static com.example.schedulingproject.ClassActivity.newClass;
import static com.example.schedulingproject.ClassActivity.removeIndex;
import static com.example.schedulingproject.ClassActivity.removePrompt;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.schedulingproject.R;
import com.example.schedulingproject.databinding.FragmentClassesBinding;

public class ClassesFragment extends Fragment {

    private FragmentClassesBinding binding;
    CustomAdapter adapter;

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
    }


    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        ClassesViewModel classesViewModel =
                new ViewModelProvider(this).get(ClassesViewModel.class);

        binding = FragmentClassesBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        //View fragmentLayout = inflater.inflate(R.layout.fragment_classes, container, false);

        //initialize the recycler view

        RecyclerView classList = root.findViewById(R.id.classList);

        classList.setLayoutManager(new LinearLayoutManager(this.getContext()));
        //initialize ur data array

        //make ur adapter
        adapter = new CustomAdapter(newClass);
        //connect adapter and recycler view
        classList.setAdapter(adapter);

        return root;
    }

    @Override
    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (newAdded) {
            adapter.notifyItemInserted(newClass.size()-1);
            //Log.d("ADDTOCLASS", "ARRAY SIZE: " + (this.classes.size()));
            Log.d("ADDTOCLASS", "ACTIVITY ARRAY SIZE: " + newClass.size());
            Log.d("ADDTOCLASS", "ADAPTER ARRAY SIZE: " + adapter.entries.size());
            newAdded = false;
        }
        if (removePrompt) {
            adapter.notifyItemRemoved(removeIndex);
            removePrompt = false;
            removeIndex = 0;
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

}