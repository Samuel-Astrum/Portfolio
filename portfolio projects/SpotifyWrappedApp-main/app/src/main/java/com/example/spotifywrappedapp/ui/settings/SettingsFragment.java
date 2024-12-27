package com.example.spotifywrappedapp.ui.settings;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModelProvider;

import com.example.spotifywrappedapp.LoginActivity;
import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.databinding.FragmentSettingsBinding;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.EmailAuthProvider;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class SettingsFragment extends Fragment {

    private FragmentSettingsBinding binding;
    private String userEmail;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        SettingsViewModel settingsViewModel =
                new ViewModelProvider(this).get(SettingsViewModel.class);

        binding = FragmentSettingsBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        TextView userEmailText = root.findViewById(R.id.text_userEmail);
        settingsViewModel.getUserEmail().observe(getViewLifecycleOwner(), userEmailText::setText);
        userEmail = settingsViewModel.getUserEmail().getValue();

        Button logoutButton = root.findViewById(R.id.sign_out_button);
        logoutButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                settingsViewModel.logout();
                Toast.makeText(getActivity(), "Logged out successfully.",
                        Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(getActivity(), LoginActivity.class);
                startActivity(intent);
            }
        });

        Button changePasswordButton = root.findViewById(R.id.change_password_button);
        changePasswordButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                createChangePasswordDialogue();
            }
        });

        Button deleteAccountButton = root.findViewById(R.id.delete_account_button);

        deleteAccountButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                deleteAccountDialogue();
            }
        });
        return root;
    }

    private void createChangePasswordDialogue() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        LayoutInflater inflater = getLayoutInflater();

        // Inflate the dialog layout
        View dialogView = inflater.inflate(R.layout.change_password_dialog, null);
        builder.setView(dialogView);

        TextView email = dialogView.findViewById(R.id.user_email_edit);
        EditText oldPassword = dialogView.findViewById(R.id.user_old_password_edit);
        EditText newPassword = dialogView.findViewById(R.id.user_new_password_edit);
        EditText confirmPassword = dialogView.findViewById(R.id.user_new_password_confirm_edit);

        email.setText(userEmail);
        builder.setPositiveButton("Change Password", null)
                .setNegativeButton("Cancel", (dialog, which) -> dialog.cancel());

        AlertDialog alertDialog = builder.create();
        alertDialog.setOnShowListener(dialog -> {
            Button button = ((AlertDialog) dialog).getButton(AlertDialog.BUTTON_POSITIVE);
            button.setOnClickListener(view -> {
                String oldPasswordText = oldPassword.getText().toString();
                String newPasswordText = newPassword.getText().toString();
                String confirmPasswordText = confirmPassword.getText().toString();
                if (oldPasswordText.isEmpty() || newPasswordText.isEmpty() || confirmPasswordText.isEmpty()) {
                    Toast.makeText(getActivity(), "Please fill in all fields.",
                            Toast.LENGTH_SHORT).show();
                } else if (!newPasswordText.equals(confirmPasswordText)) {
                    Toast.makeText(getActivity(), "Passwords do not match.",
                            Toast.LENGTH_SHORT).show();
                } else {
                    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
                    AuthCredential credential = EmailAuthProvider
                            .getCredential(userEmail, oldPasswordText);
                    user.reauthenticate(credential).addOnCompleteListener(task -> {
                        if (task.isSuccessful()) {
                            user.updatePassword(newPasswordText).addOnCompleteListener(task1 -> {
                                if (task1.isSuccessful()) {
                                    Toast.makeText(getActivity(), "Password changed successfully.",
                                            Toast.LENGTH_SHORT).show();
                                    dialog.dismiss();
                                } else {
                                    Toast.makeText(getActivity(), task1.getException().getMessage(),
                                            Toast.LENGTH_SHORT).show();
                                }
                            });
                        } else {
                            Toast.makeText(getActivity(), task.getException().getMessage(),
                                    Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            });
        });
        alertDialog.show();
    }

    private void deleteAccountDialogue() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        LayoutInflater inflater = getLayoutInflater();

        // Inflate the dialog layout
        View dialogView = inflater.inflate(R.layout.delete_account_dialog, null);
        builder.setView(dialogView);

        TextView email = dialogView.findViewById(R.id.delete_user_email_edit);
        EditText oldPassword = dialogView.findViewById(R.id.delete_user_password_edit);

        email.setText(userEmail);
        builder.setPositiveButton("Delete Account", null)
                .setNegativeButton("Cancel", (dialog, which) -> dialog.cancel());

        AlertDialog alertDialog = builder.create();
        alertDialog.setOnShowListener(dialog -> {
            Button button = ((AlertDialog) dialog).getButton(AlertDialog.BUTTON_POSITIVE);
            // set button's backgroundtintmode to red
            button.setOnClickListener(view -> {
                String oldPasswordText = oldPassword.getText().toString();
                if (oldPasswordText.isEmpty()) {
                    Toast.makeText(getActivity(), "Please fill in all fields.",
                            Toast.LENGTH_SHORT).show();
                } else {
                    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
                    AuthCredential credential = EmailAuthProvider
                            .getCredential(userEmail, oldPasswordText);
                    user.reauthenticate(credential).addOnCompleteListener(task -> {
                        if (task.isSuccessful()) {
                            user.delete().addOnCompleteListener(task1 -> {
                                if (task1.isSuccessful()) {
                                    Toast.makeText(getActivity(), "Account deleted successfully.",
                                            Toast.LENGTH_SHORT).show();
                                    dialog.dismiss();
                                    // Redirect to login page
                                    Intent intent = new Intent(getActivity(), LoginActivity.class);
                                    startActivity(intent);
                                } else {
                                    Toast.makeText(getActivity(), task1.getException().getMessage(),
                                            Toast.LENGTH_SHORT).show();
                                }
                            });
                        } else {
                            Toast.makeText(getActivity(), task.getException().getMessage(),
                                    Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            });
        });
        alertDialog.show();
    }



    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}