package com.example.spotifywrappedapp.ui.home;

import static android.content.ContentValues.TAG;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.widget.ViewPager2;

import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SpotifyHelper;
import com.example.spotifywrappedapp.ViewPagerAdapter;
import com.example.spotifywrappedapp.databinding.FragmentHomeBinding;
import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;

import java.util.ArrayList;
import java.util.Map;

public class HomeFragment extends Fragment {

    private FragmentHomeBinding binding;
    ViewPager2 viewPager;

    ViewPagerAdapter viewPagerAdapter;
    ProgressBar progressBar;
    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    FirebaseFirestore db = FirebaseFirestore.getInstance();

    private RequestQueue mRequestQueue;
    private StringRequest mStringRequest;
    //private String url = " https://api.spotify.com/v1/me/top/artists";



    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        HomeViewModel homeViewModel =
                new ViewModelProvider(this).get(HomeViewModel.class);

        binding = FragmentHomeBinding.inflate(inflater, container, false);
        View root = binding.getRoot();
        viewPager = root.findViewById(R.id.pager);
        progressBar = root.findViewById(R.id.progress_bar);
        FirebaseUser user = mAuth.getCurrentUser();

        String username = user.getDisplayName();

        db.collection("USERS").document(username).get().addOnCompleteListener(new OnCompleteListener<DocumentSnapshot>() {
            @Override
            public void onComplete(@NonNull Task<DocumentSnapshot> task) {
                if (task.isSuccessful()) {
                    DocumentSnapshot document = task.getResult();
                    if (document.exists()) {
                        String accessToken = document.get("accessToken").toString();
                        User.setAccessToken(accessToken);
                        SpotifyHelper.getTopArtists(getContext(), accessToken, new SpotifyHelper.TopArtistsCallback() {
                            @Override
                            public void onTopArtistsReceived(ArrayList<Artist> artists) {
                                // set top artists
                                User.setTopArtists(artists);

                                // set User's genres
                                ArrayList<String> genres = new ArrayList<>();
                                for (Artist artist : artists) {
                                    genres.addAll(artist.getGenres());
                                }
                                User.setGenre(String.join(", ", genres));
                            }
                            @Override
                            public void onError(String errorMessage) {
                                Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
                            }
                        });
//                        SpotifyHelper.getTopSongs(getContext(), accessToken, new SpotifyHelper.TopSongsCallback() {
//                            @Override
//                            public void onTopSongsReceived(ArrayList<Song> songs) {
//                                Log.d("all songs", songs.toString());
//                                Toast.makeText(getContext(), songs.toString(), Toast.LENGTH_SHORT).show();
//                                User.setTopSongs(songs);
//                            }
//
//                            @Override
//                            public void onError(String errorMessage) {
//                                Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
//                            }
//                        });
                    } else {
                        Toast.makeText(getContext(), "No such document", Toast.LENGTH_SHORT).show();
                    }
                } else {
                    Toast.makeText(getContext(), "Error getting data", Toast.LENGTH_SHORT).show();
                }
            }
        });


        viewPagerAdapter = new ViewPagerAdapter(this);
        viewPager.setAdapter(viewPagerAdapter);

        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                updateProgressBar(position);
            }
        });


//        final TextView textView = binding.textHome;
//        homeViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);

        return root;
    }

    private void updateProgressBar(int position) {
        // Calculate progress based on the position
        int progress = (position + 1) * 100 / viewPagerAdapter.getItemCount();
        progressBar.setProgress(progress);
    }


    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }


}