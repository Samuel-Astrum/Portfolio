// Generated by view binder compiler. Do not edit!
package com.example.schedulingproject.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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

public final class FragmentClassAddBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final Button buttonAddClass;

  @NonNull
  public final Button buttonBack;

  @NonNull
  public final ConstraintLayout frameLayout;

  @NonNull
  public final ConstraintLayout lowerAddScreen;

  @NonNull
  public final TextView textView;

  private FragmentClassAddBinding(@NonNull ConstraintLayout rootView,
      @NonNull Button buttonAddClass, @NonNull Button buttonBack,
      @NonNull ConstraintLayout frameLayout, @NonNull ConstraintLayout lowerAddScreen,
      @NonNull TextView textView) {
    this.rootView = rootView;
    this.buttonAddClass = buttonAddClass;
    this.buttonBack = buttonBack;
    this.frameLayout = frameLayout;
    this.lowerAddScreen = lowerAddScreen;
    this.textView = textView;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static FragmentClassAddBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static FragmentClassAddBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.fragment_class_add, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static FragmentClassAddBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.buttonAddClass;
      Button buttonAddClass = ViewBindings.findChildViewById(rootView, id);
      if (buttonAddClass == null) {
        break missingId;
      }

      id = R.id.buttonBack;
      Button buttonBack = ViewBindings.findChildViewById(rootView, id);
      if (buttonBack == null) {
        break missingId;
      }

      ConstraintLayout frameLayout = (ConstraintLayout) rootView;

      id = R.id.lower_add_screen;
      ConstraintLayout lowerAddScreen = ViewBindings.findChildViewById(rootView, id);
      if (lowerAddScreen == null) {
        break missingId;
      }

      id = R.id.textView;
      TextView textView = ViewBindings.findChildViewById(rootView, id);
      if (textView == null) {
        break missingId;
      }

      return new FragmentClassAddBinding((ConstraintLayout) rootView, buttonAddClass, buttonBack,
          frameLayout, lowerAddScreen, textView);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
