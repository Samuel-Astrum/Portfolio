package com.example.spotifywrappedapp;

import static com.spotify.sdk.android.auth.AuthorizationResponse.Type.TOKEN;

import static java.util.jar.Pack200.Packer.ERROR;

import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.telecom.Call;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.firestore.FirebaseFirestore;
import com.spotify.sdk.android.auth.AuthorizationClient;
import com.spotify.sdk.android.auth.AuthorizationRequest;
import com.spotify.sdk.android.auth.AuthorizationResponse;


import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import okhttp3.OkHttpClient;
import okhttp3.Request;


public class registerScreen extends AppCompatActivity {

    EditText emailText;
    EditText passwordText;
    EditText usernameText;

    TextView authorizationCompletion;
    FirebaseAuth mAuth;
    FirebaseFirestore db = FirebaseFirestore.getInstance();

    boolean isAuth = false;
    private String accessToken;

    private static final int REQUEST_CODE = 1337;
    private static final String CLIENT_ID = "de7e2494777e4ff09756cb8af3d362db";
    private static final String REDIRECT_URI = "spotifywrappedapp://auth";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register_screen);

        emailText = findViewById(R.id.signup_email);
        passwordText = findViewById(R.id.signup_password);
        usernameText = findViewById(R.id.signup_username);
        mAuth = FirebaseAuth.getInstance();

        Button registerButton = findViewById(R.id.signup_button);
        Button connectSpotify = findViewById(R.id.spotifyConnect);
        TextView loginRedirect=  findViewById(R.id.loginRedirectText);
        authorizationCompletion = findViewById(R.id.authorizationCompletion);

        FirebaseUser currentUser = mAuth.getCurrentUser();

        AuthorizationRequest.Builder builder =
                new AuthorizationRequest.Builder(CLIENT_ID, TOKEN, REDIRECT_URI);

        builder.setScopes(new String[]{"user-read-private", "streaming", "user-top-read"});
        AuthorizationRequest request = builder.build();

        connectSpotify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AuthorizationClient.openLoginActivity(registerScreen.this, REQUEST_CODE, request);
            }
        });
        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String email = emailText.getText().toString();
                String password = passwordText.getText().toString();
                String username = usernameText.getText().toString();

                if(!email.equals("")) {
                    if(!username.equals("")) {
                        if(!password.equals("")) {
                            if(isAuth) {
                                mAuth.createUserWithEmailAndPassword(email, password)
                                        .addOnCompleteListener(registerScreen.this, new OnCompleteListener<AuthResult>() {
                                            @Override
                                            public void onComplete(@NonNull Task<AuthResult> task) {
                                                if (task.isSuccessful()) {
                                                    // Sign in success, update UI with the signed-in user's information
                                                    Map<String, Object> userData = new HashMap<>();
                                                    userData.put("email", email);
                                                    userData.put("username", username);
                                                    userData.put("accessToken", accessToken);
                                                    userData.put("savedWrapped", new ArrayList<>());

                                                    db.collection("USERS").document(username).set(userData);
                                                    FirebaseUser user = mAuth.getCurrentUser();


                                                    UserProfileChangeRequest profileUpdates = new UserProfileChangeRequest.Builder()
                                                            .setDisplayName(username)
                                                            .build();

                                                    user.updateProfile(profileUpdates)
                                                            .addOnCompleteListener(new OnCompleteListener<Void>() {
                                                                @Override
                                                                public void onComplete(@NonNull Task<Void> task) {
                                                                    if (task.isSuccessful()) {
                                                                        Toast.makeText(registerScreen.this, "Registration successful.",
                                                                                Toast.LENGTH_SHORT).show();
                                                                        Intent intent = new Intent(registerScreen.this, MainActivity.class);
                                                                        startActivity(intent);
                                                                    } else {
                                                                        Log.w("RegisterScreen", "Failed to update user profile.", task.getException());
                                                                    }
                                                                }
                                                            });
                                                } else {
                                                    // If sign in fails, display a message to the user.
                                                    Toast.makeText(registerScreen.this, "Failed to register.",
                                                            Toast.LENGTH_SHORT).show();
                                                }
                                            }
                                        });
                            } else {
                                Toast.makeText(registerScreen.this, "Complete authentication.",
                                        Toast.LENGTH_SHORT).show();
                            }
                        } else {
                            Toast.makeText(registerScreen.this, "Enter valid password.",
                                    Toast.LENGTH_SHORT).show();
                        }
                    } else {
                        Toast.makeText(registerScreen.this, "Enter valid username.",
                                Toast.LENGTH_SHORT).show();
                    }
                } else {
                    Toast.makeText(registerScreen.this, "Enter valid email.",
                            Toast.LENGTH_SHORT).show();
                }


            }
        });
        loginRedirect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(registerScreen.this, LoginActivity.class);
                startActivity(intent);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);

        // Check if result comes from the correct activity
        if (requestCode == REQUEST_CODE) {
            // Process authentication response
            AuthorizationResponse response = AuthorizationClient.getResponse(resultCode, intent);
            switch (response.getType()) {
                case TOKEN:
                    // Access token obtained
                    accessToken = response.getAccessToken();
                    Log.d("AccessToken", accessToken);
                    // Use the access token for further operations
                    authorizationCompletion.setText("Authorization complete!");
                    isAuth = true;
                    break;
                case ERROR:
                    // Handle error
                    Toast.makeText(this, "Error: " + response.getError(), Toast.LENGTH_SHORT).show();
                    break;
                default:
                    // Handle other cases
            }
        }
    }






}

