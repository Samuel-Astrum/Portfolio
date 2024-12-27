package com.example.spotifywrappedapp.ui.Feed;

import static android.content.ContentValues.TAG;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.example.spotifywrappedapp.PostAdapter;
import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SavedWrappedAdapter;
import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.Saved;
import com.example.spotifywrappedapp.ui.models.Song;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FeedFragment extends Fragment {

    RecyclerView recyclerView;
    ArrayList<Saved> posts;
    PostAdapter postAdapter;
    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    FirebaseFirestore db = FirebaseFirestore.getInstance();

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_feed, container, false);

        recyclerView = view.findViewById(R.id.postFeed);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(linearLayoutManager);

        posts = new ArrayList<>();
        postAdapter = new PostAdapter(getContext(), posts);
        recyclerView.setAdapter(postAdapter);

        db.collection("WRAPPED").whereEqualTo("post", "true").get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                if (task.isSuccessful()) {
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        String type = document.get("type").toString();
                        String date = document.get("date").toString();
                        String username = document.get("username").toString();
                        String caption = document.get("caption").toString();

                        ArrayList<Artist> artistArrayList = new ArrayList<>();
                        List<Map<String, Object>> artistsList = (List<Map<String, Object>>) document.get("artists");
                        for (Map<String, Object> artist : artistsList) {
                            // Accessing individual fields from the artist map
                            String name = artist.get("name").toString();
                            String imageUrl = artist.get("imageURL").toString();
                            ArrayList<String> genres = (ArrayList<String>) artist.get("genres");
                            Artist artistObj = new Artist(name, genres, imageUrl);
                            artistArrayList.add(artistObj);
                        }

                        ArrayList<Song> songArrayList = new ArrayList<>();
                        List<Map<String, Object>> songsList = (List<Map<String, Object>>) document.get("songs");
                        for (Map<String, Object> song : songsList) {
                            // Accessing individual fields from the artist map
                            String name = song.get("name").toString();
                            String imageUrl = song.get("imageURL").toString();
                            ArrayList<String> artists = (ArrayList<String>) song.get("artists");
                            Song songObj = new Song(name, artists, imageUrl);
                            songArrayList.add(songObj);
                        }
                        Saved saved = new Saved(document.getId(), artistArrayList, songArrayList, date, type);
                        saved.setCaption(caption);
                        saved.setUsername(username);
                        posts.add(saved);
                        postAdapter.notifyDataSetChanged();
                    }
                } else {
                    Log.d(TAG, "Error getting documents: ", task.getException());
                }
            }
        });

        return view;

    }
}