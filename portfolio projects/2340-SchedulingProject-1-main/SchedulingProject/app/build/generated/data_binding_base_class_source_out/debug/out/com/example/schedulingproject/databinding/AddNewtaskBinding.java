// Generated by view binder compiler. Do not edit!
package com.example.schedulingproject.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.schedulingproject.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class AddNewtaskBinding implements ViewBinding {
  @NonNull
  private final RelativeLayout rootView;

  @NonNull
  public final Button buttonSave;

  @NonNull
  public final EditText edittext;

  private AddNewtaskBinding(@NonNull RelativeLayout rootView, @NonNull Button buttonSave,
      @NonNull EditText edittext) {
    this.rootView = rootView;
    this.buttonSave = buttonSave;
    this.edittext = edittext;
  }

  @Override
  @NonNull
  public RelativeLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static AddNewtaskBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static AddNewtaskBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.add_newtask, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static AddNewtaskBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.button_save;
      Button buttonSave = ViewBindings.findChildViewById(rootView, id);
      if (buttonSave == null) {
        break missingId;
      }

      id = R.id.edittext;
      EditText edittext = ViewBindings.findChildViewById(rootView, id);
      if (edittext == null) {
        break missingId;
      }

      return new AddNewtaskBinding((RelativeLayout) rootView, buttonSave, edittext);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
