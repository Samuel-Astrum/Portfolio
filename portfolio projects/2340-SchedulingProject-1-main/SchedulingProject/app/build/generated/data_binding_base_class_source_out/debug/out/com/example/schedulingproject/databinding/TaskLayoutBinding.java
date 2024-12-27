// Generated by view binder compiler. Do not edit!
package com.example.schedulingproject.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.schedulingproject.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class TaskLayoutBinding implements ViewBinding {
  @NonNull
  private final CardView rootView;

  @NonNull
  public final CheckBox mcheckbox;

  private TaskLayoutBinding(@NonNull CardView rootView, @NonNull CheckBox mcheckbox) {
    this.rootView = rootView;
    this.mcheckbox = mcheckbox;
  }

  @Override
  @NonNull
  public CardView getRoot() {
    return rootView;
  }

  @NonNull
  public static TaskLayoutBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static TaskLayoutBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.task_layout, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static TaskLayoutBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.mcheckbox;
      CheckBox mcheckbox = ViewBindings.findChildViewById(rootView, id);
      if (mcheckbox == null) {
        break missingId;
      }

      return new TaskLayoutBinding((CardView) rootView, mcheckbox);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
