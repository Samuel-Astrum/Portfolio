package com.example.spotifywrappedapp.ui.settings;

import android.util.Log;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

import java.util.Objects;

public class SettingsViewModel extends ViewModel {
    private final FirebaseAuth mAuth;
    private final MutableLiveData<String> userDisplayName;
    private final MutableLiveData<String> userEmail;

    public SettingsViewModel() {
        userDisplayName = new MutableLiveData<>();
        userEmail = new MutableLiveData<>();

        mAuth = FirebaseAuth.getInstance();
        fetchUserInfo();
        Log.println(Log.INFO, "email", userEmail.toString());
    }

    private void fetchUserInfo() {
        if (mAuth.getCurrentUser() != null) {
            userEmail.setValue(mAuth.getCurrentUser().getEmail());
        }
    }

    public LiveData<String> getUserEmail() {
        return userEmail;
    }

    public void logout() {
        mAuth.signOut();
    }
}