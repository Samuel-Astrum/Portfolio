package com.example.spotifywrappedapp.ui.wrappedFragments;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SpotifyHelper;
import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.User;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TopGenresFragment extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_top_genre, container, false);

        SpotifyHelper.getTopArtists(getContext(), User.getAccessToken(), new SpotifyHelper.TopArtistsCallback() {
            @Override
            public void onTopArtistsReceived(ArrayList<Artist> artists) {
                HashMap<String, Integer> topGenres = new HashMap<>();
                for (Artist artist : artists) {
                    for (String genre : artist.getGenres()) {
                        if (topGenres.containsKey(genre)) {
                            topGenres.put(genre, topGenres.get(genre) + 1);
                        } else {
                            topGenres.put(genre, 1);
                        }
                    }
                }
                List<Map.Entry<String, Integer>> sortedGenres = new ArrayList<>(topGenres.entrySet());
                sortedGenres.sort((entry1, entry2) -> entry2.getValue().compareTo(entry1.getValue()));

                // Get the top 5 genres
                List<Map.Entry<String, Integer>> top5Genres = sortedGenres.subList(0, Math.min(5, sortedGenres.size()));

                for(int i = 1; i <= 5; i++) {
                    int genreId = getResources().getIdentifier("genre" + i, "id", getContext().getPackageName());
                    TextView textView = view.findViewById(genreId);
                    if (textView != null) {
                        textView.setText(top5Genres.get(i-1).getKey());
                    }
                }
            }

            @Override
            public void onError(String errorMessage) {
                Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
            }
        });

        return view;
    }
}