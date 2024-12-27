package com.example.schedulingproject;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.schedulingproject.databinding.ActivityMainBinding;
import com.example.schedulingproject.ui.classes.ClassEntry;
import com.example.schedulingproject.ui.classes.ClassEntry;
import com.example.schedulingproject.ui.classes.ClassesFragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationBarView;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class ClassActivity extends AppCompatActivity {


    public static ArrayList<ClassEntry> newClass;

    public static boolean newAdded;
    public static boolean removePrompt;
    public static int removeIndex;


    private ActivityMainBinding binding;
    Button button;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        newClass = new ArrayList<ClassEntry>();

        //button = findViewById(R.id.gohomebutton);
        /*button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent2 = new Intent(ClassActivity.this, FirstActivity.class);
                startActivity(intent2);
            }
        });*/

//        File saveFile = new File(this.getApplicationContext().getFilesDir() + "\\class_list.txt");
//        try {
//            if (saveFile.createNewFile()) {
//                Log.d("CLASS","onCreate: file");
//            }
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//        String saveData = readFromFile(this.getApplicationContext());
//        ArrayList<String> saveContent = new ArrayList<>();
//        while(!saveData.equals("")) {
//            int index = saveData.indexOf("\n");
//            String temp = saveData.substring(0, index);
//            saveContent.add(temp);
//            saveData = saveData.substring(index + 1);
//        }
//        int entries = saveContent.size() / 8;
//        int index = 0;
//        for (int i = 0; i < entries; i++) {
//            ClassEntry savedClass = new ClassEntry();
//            savedClass.setCourseName(saveContent.get(index++));
//            savedClass.setInstructor(saveContent.get(index++));
//            savedClass.setClassSection(saveContent.get(index++));
//            savedClass.setLocation(saveContent.get(index++));
//            savedClass.setRoomNumber(saveContent.get(index++));
//            savedClass.setTimes(saveContent.get(index++));
//            savedClass.setDaysOfTheWeek(saveContent.get(index++));
//            newClass.add(savedClass);
//        }


        newAdded = false;
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        BottomNavigationView navView = findViewById(R.id.nav_view);
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        AppBarConfiguration appBarConfiguration = new AppBarConfiguration.Builder(
                R.id.navigation_home, R.id.navigation_dashboard, R.id.navigation_notifications)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_activity_main);
        NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);
        NavigationUI.setupWithNavController(binding.navView, navController);

        /*navView.setOnItemSelectedListener(item -> {
            if (item.getItemId() == R.id.navigation_dashboard) {
                startActivity(new Intent(getApplicationContext(), FirstActivity.class));
                finish();
                return true;
            }
            if (item.getItemId() == R.id.navigation_notifications) {
                startActivity(new Intent(getApplicationContext(), FragmentCaller.class));
                finish();
                return true;
            }

            return false;
        });*/




    }


    @Override
    protected void onDestroy() {
        for (int i = 0; i < newClass.size(); i++) {
//            writeToFile(newClass.get(i).getCourseName(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getInstructor(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getClassSection(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getLocation(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getRoomNumber(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getTimes(), this.getApplicationContext());
//            writeToFile(newClass.get(i).getDaysOfTheWeek(), this.getApplicationContext());
        }
        super.onDestroy();
    }

//    private void writeToFile(String string, Context context) {
//        OutputStreamWriter writer = null;
//        try {
//            writer = new OutputStreamWriter(context.openFileOutput("class_list.txt", Context.MODE_PRIVATE));
//        } catch (FileNotFoundException e) {
//            throw new RuntimeException(e);
//        }
//        try {
//            writer.write(string);
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//        try {
//            writer.close();
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//    private String readFromFile(Context context) {
//        String ans = "";
//        InputStream input = null;
//        try {
//            input = context.openFileInput("class_list.txt");
//        } catch (FileNotFoundException e) {
//            throw new RuntimeException(e);
//        }
//        if (input != null) {
//            InputStreamReader reader = new InputStreamReader(input);
//            BufferedReader buffer = new BufferedReader(reader);
//            String receive = "";
//            StringBuilder builder = new StringBuilder();
//            while (true) {
//                try {
//                    if ((receive = buffer.readLine()) != null) break;
//                } catch (IOException e) {
//                    throw new RuntimeException(e);
//                }
//                builder.append("\n").append(receive);
//            }
//            try {
//                input.close();
//            } catch (IOException e) {
//                throw new RuntimeException(e);
//            }
//            ans = builder.toString();
//        }
//        return ans;
//    }
public void buttonClick(View v) {
    if (v.getId() == R.id.gohomebutton) {
        Intent myIntent = new Intent(this, FirstActivity.class);

        // for ex: your package name can be "com.example"
        // your activity name will be "com.example.Contact_Developer"
        startActivity(myIntent);
    }
}

}