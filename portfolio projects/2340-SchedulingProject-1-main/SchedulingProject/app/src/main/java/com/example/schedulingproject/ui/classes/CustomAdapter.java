package com.example.schedulingproject.ui.classes;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.schedulingproject.R;

import java.util.List;

public class CustomAdapter extends RecyclerView.Adapter<CustomAdapter.ViewHolder> {


    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView courseNameTextView;
        public TextView instructorTextView;
        public TextView classSectionTextView;
        public TextView locationTextView;
        public TextView timeAndWeekdaysTextView;

        public ViewHolder(View classView) {
            super(classView);
            courseNameTextView = (TextView) classView.findViewById(R.id.course_name_text_view);
            instructorTextView = (TextView) classView.findViewById(R.id.instructor_text_view);
            classSectionTextView = (TextView) classView.findViewById(R.id.class_section_text_view);
            locationTextView = (TextView) classView.findViewById(R.id.location_text_view);
            timeAndWeekdaysTextView = (TextView) classView.findViewById(R.id.time_and_weekdays_text_view);
        }
    }



    List<ClassEntry> entries;

    public CustomAdapter(List<ClassEntry> entries) {
        super();
        this.entries = entries;
    }

    public Object getItem(int i) {
        return entries.get(i);
    }


    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        //make the view container based upon provided xml format and view
        //gather context of xml file
        Context context =  parent.getContext();
        //create an inflater to inflate the layout provided by the context
        LayoutInflater inflater = LayoutInflater.from(context);
        //actually inflate the layout
        View classView = inflater.inflate(R.layout.item_class, parent, false);
        //now make a viewholder
        ViewHolder viewHolder = new ViewHolder(classView);
        //now return the viewholder
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        //use the viewholder to add desired data into holder
        //get the current classentry to input into view holder
        ClassEntry classEntry = entries.get(position);

        //create text views for each piece of data
        TextView courseName = holder.courseNameTextView;
        TextView instructor = holder.instructorTextView;
        TextView classSection = holder.classSectionTextView;
        TextView timePeriod = holder.timeAndWeekdaysTextView;
        TextView location = holder.locationTextView;

        //now implement from current class entry into each text view

        String courseNameString = classEntry.getCourseName() + ", " + classEntry.getClassSection();
        courseName.setText(courseNameString);

        String instructorString = classEntry.getInstructor();
        instructor.setText(instructorString);

        String classSectionString = classEntry.getClassSection();
        classSection.setText(classSectionString);

        String timePeriodString = classEntry.getTimes();
        timePeriod.setText(timePeriodString);

        String locationString = classEntry.getLocation() + ", Room " + classEntry.getRoomNumber();
        location.setText(locationString);
    }

    @Override
    public long getItemId(int position) {
        return entries.get(position).hashCode();
    }

    @Override
    public int getItemCount() {
        return entries.size();
    }


    public CharSequence classToText(ClassEntry classEntry) {
        return "example";
    }

}
