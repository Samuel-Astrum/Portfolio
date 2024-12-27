package com.example.schedulingproject.ui.back;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class BackViewModel extends ViewModel {

    private final MutableLiveData<String> mText;

    public BackViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("This is back fragment");
    }

    public LiveData<String> getText() {
        return mText;
    }
}