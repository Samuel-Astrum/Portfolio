// Generated by view binder compiler. Do not edit!
package com.example.schedulingproject.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import com.example.schedulingproject.R;
import java.lang.NullPointerException;
import java.lang.Override;

public final class FragmentScrollingBinding implements ViewBinding {
  @NonNull
  private final NestedScrollView rootView;

  private FragmentScrollingBinding(@NonNull NestedScrollView rootView) {
    this.rootView = rootView;
  }

  @Override
  @NonNull
  public NestedScrollView getRoot() {
    return rootView;
  }

  @NonNull
  public static FragmentScrollingBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static FragmentScrollingBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.fragment_scrolling, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static FragmentScrollingBinding bind(@NonNull View rootView) {
    if (rootView == null) {
      throw new NullPointerException("rootView");
    }

    return new FragmentScrollingBinding((NestedScrollView) rootView);
  }
}
