package com.example.spotifywrappedapp.ui.gallery;

import static android.content.ContentValues.TAG;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SavedWrappedAdapter;
import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.Saved;
import com.example.spotifywrappedapp.ui.models.Song;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SavedWrappedFragment extends Fragment {

    RecyclerView recyclerView;
    ArrayList<Saved> savedWrapped;
    SavedWrappedAdapter swAdapter;
    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_savedwrapped, container, false);
        recyclerView = view.findViewById(R.id.savedList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(linearLayoutManager);
        FirebaseUser user = mAuth.getCurrentUser();
        String username = user.getDisplayName();

        savedWrapped = new ArrayList<>();

        swAdapter = new SavedWrappedAdapter(getContext(), savedWrapped);
        recyclerView.setAdapter(swAdapter);

        db.collection("USERS").document(username).get().addOnCompleteListener(new OnCompleteListener<DocumentSnapshot>() {
            @Override
            public void onComplete(@NonNull Task<DocumentSnapshot> task) {
                if (task.isSuccessful()) {
                    DocumentSnapshot document = task.getResult();
                    if (document.exists()) {
                        ArrayList<String> savedIDs = (ArrayList<String>) document.get("savedWrapped");
                        for(String savedID : savedIDs) {
                            db.collection("WRAPPED").document(savedID).get().addOnCompleteListener(new OnCompleteListener<DocumentSnapshot>() {
                                @Override
                                public void onComplete(@NonNull Task<DocumentSnapshot> task) {
                                    if (task.isSuccessful()) {
                                        DocumentSnapshot document = task.getResult();
                                        if (document.exists()) {
                                            String type = document.get("type").toString();
                                            String date = document.get("date").toString();

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
                                            Saved saved = new Saved(savedID, artistArrayList, songArrayList, date, type);
                                            savedWrapped.add(saved);
                                            swAdapter.notifyDataSetChanged();
                                        } else {
                                            Toast.makeText(getContext(), "No such document", Toast.LENGTH_SHORT).show();
                                        }
                                    } else {
                                        Toast.makeText(getContext(), "Error getting data", Toast.LENGTH_SHORT).show();
                                    }
                                }
                            });
                        }

                    } else {
                        Toast.makeText(getContext(), "No such document", Toast.LENGTH_SHORT).show();
                    }
                } else {
                    Toast.makeText(getContext(), "Error getting data", Toast.LENGTH_SHORT).show();
                }
            }
        });

        return view;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }
}