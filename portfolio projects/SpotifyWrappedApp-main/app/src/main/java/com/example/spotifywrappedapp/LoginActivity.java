package com.example.spotifywrappedapp;

import static com.spotify.sdk.android.auth.AuthorizationResponse.Type.TOKEN;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
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

import org.w3c.dom.Text;

import java.util.HashMap;
import java.util.Map;

public class LoginActivity extends AppCompatActivity {

    EditText emailText;
    EditText passwordText;
    FirebaseAuth mAuth;
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    private String accessToken;
    private static final int REQUEST_CODE = 1337;
    private static final String CLIENT_ID = "de7e2494777e4ff09756cb8af3d362db";
    private static final String REDIRECT_URI = "spotifywrappedapp://auth";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        mAuth = FirebaseAuth.getInstance();
        emailText = findViewById(R.id.emailText);
        passwordText = findViewById(R.id.passwordText);

        Button loginButton = findViewById(R.id.loginButton);
        TextView registerButton = findViewById(R.id.registerButton);

//        mAuth.signOut();
        FirebaseUser currentUser = mAuth.getCurrentUser();

        AuthorizationRequest.Builder builder =
                new AuthorizationRequest.Builder(CLIENT_ID, TOKEN, REDIRECT_URI);

        builder.setScopes(new String[]{"user-read-private", "streaming", "user-top-read"});
        AuthorizationRequest request = builder.build();



//        if(currentUser != null){
//            Intent intent = new Intent(LoginActivity.this, MainActivity.class);
//            startActivity(intent);
//        }

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String email = emailText.getText().toString();
                String password= passwordText.getText().toString();

                mAuth.signInWithEmailAndPassword(email, password)
                        .addOnCompleteListener(LoginActivity.this, new OnCompleteListener<AuthResult>() {
                            @Override
                            public void onComplete(@NonNull Task<AuthResult> task) {
                                if (task.isSuccessful()) {
                                    AuthorizationClient.openLoginActivity(LoginActivity.this, REQUEST_CODE, request);
                                } else {
                                    Log.w("LoginActivity", "signInWithEmail:failure", task.getException());
                                    // If sign in fails, display a message to the user.
                                    Toast.makeText(LoginActivity.this, "Failed to login.",
                                            Toast.LENGTH_SHORT).show();
                                }
                            }
                        });
            }
        });

        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(LoginActivity.this,  "Going to registration",
                        Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(LoginActivity.this, registerScreen.class);
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
                    Map<String, Object> userData = new HashMap<>();
                    userData.put("accessToken", accessToken);
                    FirebaseUser user = mAuth.getCurrentUser();
                    String username = user.getDisplayName();
                    db.collection("USERS").document(username).update(userData);
                    Intent moveToHome = new Intent(LoginActivity.this, MainActivity.class);
                    startActivity(moveToHome);
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