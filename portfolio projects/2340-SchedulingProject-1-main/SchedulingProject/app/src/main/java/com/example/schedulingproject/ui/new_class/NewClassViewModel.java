package com.example.schedulingproject.ui.new_class;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class NewClassViewModel extends ViewModel {

    private final MutableLiveData<String> mText;

    public NewClassViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("This is notifications fragment");
    }

    public LiveData<String> getText() {
        return mText;
    }
}