package com.example.spotifywrappedapp;

import static android.content.ContentValues.TAG;

import static java.security.AccessController.getContext;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.Saved;
import com.example.spotifywrappedapp.ui.models.Song;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.FirebaseFirestore;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SavedViewActivity extends AppCompatActivity {

    FirebaseFirestore db = FirebaseFirestore.getInstance();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_saved_view);
        Intent intent = getIntent();
        Saved saved = intent.getParcelableExtra("saved");


        TextView date = findViewById(R.id.dateTV);
        TextView type = findViewById(R.id.typeTV);

        date.setText(saved.getDate());
        type.setText(saved.getType());

        ArrayList<Song> songs = saved.getSongs();
        ArrayList<Artist> artists = saved.getArtists();

        ImageView topArtistImage = findViewById(R.id.topArtistImage);
        Picasso.get().load(artists.get(0).getImageURL()).into(topArtistImage);
        for(int i = 1; i <= 5; i++) {
            int artistTVID = getResources().getIdentifier("artist" + i, "id", this.getPackageName());
            int songTVID = getResources().getIdentifier("song" + i, "id", this.getPackageName());
            //int imageViewID = getResources().getIdentifier("songImage" + i, "id", getContext().getPackageName());
            TextView artistTV = findViewById(artistTVID);
            TextView songTV = findViewById(songTVID);
            //ImageView imageView = view.findViewById(imageViewID);
            if (artistTV != null && songTV != null) {
                songTV.setText(songs.get(i-1).getName());
                artistTV.setText(artists.get(i-1).getName());
                //String imageUrl = songs.get(i-1).getImageURL();
            }
        }
        Button postBtn = findViewById(R.id.postBtn);

        postBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Map<String, Object> wrappedData = new HashMap<>();
                wrappedData.put("post", "true");
                wrappedData.put("caption", "My Spotify Wrapped!");
                db.collection("WRAPPED").document(saved.getWrappedID()).update(wrappedData);
                Toast.makeText(SavedViewActivity.this, "Successfully posted!", Toast.LENGTH_SHORT).show();

            }
        });

        Button backBtn = findViewById(R.id.backBtn);

        backBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }
}