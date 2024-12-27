package com.example.schedulingproject.ui.new_class;

import static com.example.schedulingproject.ClassActivity.newAdded;
import static com.example.schedulingproject.ClassActivity.newClass;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.fragment.NavHostFragment;

import com.example.schedulingproject.R;
import com.example.schedulingproject.databinding.FragmentNewClassBinding;
import com.example.schedulingproject.ui.classes.ClassEntry;
//import com.example.classviewportion.databinding.FragmentNotificationsBinding;

public class NewClassFragment extends Fragment {

    //private MainActivity activity;

    EditText courseName;
    EditText building;
    EditText instructor;
    EditText startTime;
    EditText endTime;
    EditText roomNumber;
    EditText section;
    EditText weekDays;

    private FragmentNewClassBinding binding;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        NewClassViewModel notificationsViewModel =
                new ViewModelProvider(this).get(NewClassViewModel.class);

        binding = FragmentNewClassBinding.inflate(inflater, container, false);





        return binding.getRoot();
    }

    @Override
    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        courseName = (EditText) getView().findViewById(R.id.course_name);
        building = (EditText) getView().findViewById(R.id.location);
        instructor = (EditText) getView().findViewById(R.id.instructor);
        startTime = (EditText) getView().findViewById(R.id.start_time);
        endTime = (EditText) getView().findViewById(R.id.end_time);
        roomNumber = (EditText) getView().findViewById(R.id.room_number);
        section = (EditText) getView().findViewById(R.id.class_section);
        weekDays = (EditText) getView().findViewById(R.id.days_of_week);

        view.findViewById(R.id.create_button).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d("ADDTOCLASS", "ONCLICKACTIVATED");
                ClassEntry newEntry = new ClassEntry();
                newEntry.setCourseName(courseName.getText().toString());
                newEntry.setClassSection(section.getText().toString());
                newEntry.setInstructor(instructor.getText().toString());
                newEntry.setLocation(building.getText().toString());
                newEntry.setRoomNumber(roomNumber.getText().toString());
                String[] weekDaysS = weekDays.getText().toString().split(" ");
                String days = "";
                for (int i = 0; i < weekDaysS.length; i++) {
                    String temp = weekDaysS[i];
                    days = days.concat(temp + " ");
                }
                newEntry.setDaysOfTheWeek(days);
                String[] times = new String[2];
                times[0] = startTime.getText().toString();
                times[1] = endTime.getText().toString();
                String timesCom = times[0] + " to " + times[1];
                newEntry.setTimes(timesCom);
                newClass.add(newEntry);
                newAdded = true;
                Log.d("ADDTOCLASS", "NEW CLASS ADD FUNCTION CALLED");
                Log.d("ADDTOCLASS", "NEW CLASS CURRENTLY: " + newEntry.getCourseName());
                //activity.getNewClass().add(newEntry);
                NavHostFragment.findNavController(NewClassFragment.this).navigate(R.id.action_navigation_notifications_to_navigation_home);
            }
        });
    }


    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }


//    @Override
//    public void onAttach(@NonNull Context context) {
//        super.onAttach(context);
//        activity = (MainActivity) context;
//    }
}