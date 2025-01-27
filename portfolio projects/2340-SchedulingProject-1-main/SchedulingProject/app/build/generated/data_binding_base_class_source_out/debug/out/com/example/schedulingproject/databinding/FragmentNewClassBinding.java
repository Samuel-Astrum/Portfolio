// Generated by view binder compiler. Do not edit!
package com.example.schedulingproject.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.schedulingproject.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class FragmentNewClassBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final EditText classSection;

  @NonNull
  public final EditText courseName;

  @NonNull
  public final Button createButton;

  @NonNull
  public final EditText daysOfWeek;

  @NonNull
  public final EditText endTime;

  @NonNull
  public final TextView flavorText;

  @NonNull
  public final LinearLayout informationLayout;

  @NonNull
  public final EditText instructor;

  @NonNull
  public final EditText location;

  @NonNull
  public final ConstraintLayout newClassTab;

  @NonNull
  public final EditText roomNumber;

  @NonNull
  public final EditText startTime;

  private FragmentNewClassBinding(@NonNull ConstraintLayout rootView,
      @NonNull EditText classSection, @NonNull EditText courseName, @NonNull Button createButton,
      @NonNull EditText daysOfWeek, @NonNull EditText endTime, @NonNull TextView flavorText,
      @NonNull LinearLayout informationLayout, @NonNull EditText instructor,
      @NonNull EditText location, @NonNull ConstraintLayout newClassTab,
      @NonNull EditText roomNumber, @NonNull EditText startTime) {
    this.rootView = rootView;
    this.classSection = classSection;
    this.courseName = courseName;
    this.createButton = createButton;
    this.daysOfWeek = daysOfWeek;
    this.endTime = endTime;
    this.flavorText = flavorText;
    this.informationLayout = informationLayout;
    this.instructor = instructor;
    this.location = location;
    this.newClassTab = newClassTab;
    this.roomNumber = roomNumber;
    this.startTime = startTime;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static FragmentNewClassBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static FragmentNewClassBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.fragment_new_class, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static FragmentNewClassBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.class_section;
      EditText classSection = ViewBindings.findChildViewById(rootView, id);
      if (classSection == null) {
        break missingId;
      }

      id = R.id.course_name;
      EditText courseName = ViewBindings.findChildViewById(rootView, id);
      if (courseName == null) {
        break missingId;
      }

      id = R.id.create_button;
      Button createButton = ViewBindings.findChildViewById(rootView, id);
      if (createButton == null) {
        break missingId;
      }

      id = R.id.days_of_week;
      EditText daysOfWeek = ViewBindings.findChildViewById(rootView, id);
      if (daysOfWeek == null) {
        break missingId;
      }

      id = R.id.end_time;
      EditText endTime = ViewBindings.findChildViewById(rootView, id);
      if (endTime == null) {
        break missingId;
      }

      id = R.id.flavor_text;
      TextView flavorText = ViewBindings.findChildViewById(rootView, id);
      if (flavorText == null) {
        break missingId;
      }

      id = R.id.informationLayout;
      LinearLayout informationLayout = ViewBindings.findChildViewById(rootView, id);
      if (informationLayout == null) {
        break missingId;
      }

      id = R.id.instructor;
      EditText instructor = ViewBindings.findChildViewById(rootView, id);
      if (instructor == null) {
        break missingId;
      }

      id = R.id.location;
      EditText location = ViewBindings.findChildViewById(rootView, id);
      if (location == null) {
        break missingId;
      }

      ConstraintLayout newClassTab = (ConstraintLayout) rootView;

      id = R.id.room_number;
      EditText roomNumber = ViewBindings.findChildViewById(rootView, id);
      if (roomNumber == null) {
        break missingId;
      }

      id = R.id.start_time;
      EditText startTime = ViewBindings.findChildViewById(rootView, id);
      if (startTime == null) {
        break missingId;
      }

      return new FragmentNewClassBinding((ConstraintLayout) rootView, classSection, courseName,
          createButton, daysOfWeek, endTime, flavorText, informationLayout, instructor, location,
          newClassTab, roomNumber, startTime);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
