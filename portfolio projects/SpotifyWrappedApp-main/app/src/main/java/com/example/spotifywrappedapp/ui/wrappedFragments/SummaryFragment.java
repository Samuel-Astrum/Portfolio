package com.example.spotifywrappedapp.ui.wrappedFragments;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.ui.models.Song;
import com.example.spotifywrappedapp.SpotifyHelper;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

import com.google.firebase.firestore.FieldValue;
import com.google.firebase.firestore.FirebaseFirestore;
import com.squareup.picasso.Picasso;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link SummaryFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class SummaryFragment extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    ArrayList<Song> songsGlobal = new ArrayList<>();
    ArrayList<Artist> artistsGlobal = new ArrayList<>();
    FirebaseFirestore db = FirebaseFirestore.getInstance();

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public SummaryFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment GenreFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static SummaryFragment newInstance(String param1, String param2) {
        SummaryFragment fragment = new SummaryFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_summary, container, false);
        SpotifyHelper.getTopSongs(getContext(), User.getAccessToken(), new SpotifyHelper.TopSongsCallback() {
            @Override
            public void onTopSongsReceived(ArrayList<Song> songs) {

                User.setTopSongs(songs);
                songsGlobal = songs;
                SpotifyHelper.getTopArtists(getContext(), User.getAccessToken(), new SpotifyHelper.TopArtistsCallback() {
                    @Override
                    public void onTopArtistsReceived(ArrayList<Artist> artists) {
                        artistsGlobal = artists;
                        User.setTopArtists(artists);
                        Log.d("all songs", songs.toString());
                        User.setTopSongs(songs);
                        ImageView topArtistImage = view.findViewById(R.id.topArtistImage);
                        Picasso.get().load(artists.get(0).getImageURL()).into(topArtistImage);
                        for(int i = 1; i <= 5; i++) {
                            int artistTVID = getResources().getIdentifier("artist" + i, "id", getContext().getPackageName());
                            int songTVID = getResources().getIdentifier("song" + i, "id", getContext().getPackageName());
                            //int imageViewID = getResources().getIdentifier("songImage" + i, "id", getContext().getPackageName());
                            TextView artistTV = view.findViewById(artistTVID);
                            TextView songTV = view.findViewById(songTVID);
                            //ImageView imageView = view.findViewById(imageViewID);
                            if (artistTV != null && songTV != null) {
                                songTV.setText(songs.get(i-1).getName());
                                artistTV.setText(artists.get(i-1).getName());
                                //String imageUrl = songs.get(i-1).getImageURL();
                            }
                        }
                    }
                    @Override
                    public void onError(String errorMessage) {
                        Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
                    }
                });

            }

            @Override
            public void onError(String errorMessage) {
                Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
            }
        });


        Button saveBtn = view.findViewById(R.id.saveBtn);
        saveBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                FirebaseUser user = mAuth.getCurrentUser();
                String username = user.getDisplayName();
                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM d, yyyy", Locale.ENGLISH);
                String currentDate = dateFormat.format(calendar.getTime());


                Map<String, Object> wrappedData = new HashMap<>();
                wrappedData.put("username", username);
                wrappedData.put("artists", artistsGlobal);
                wrappedData.put("songs", songsGlobal);
                wrappedData.put("date", currentDate);
                wrappedData.put("post", "false");

                String timespan = SpotifyHelper.getTimespan();
                String type = "";

                if(timespan.equals("short_term")) {
                    type = "4 weeks";
                } else if(timespan.equals("medium_term")) {
                    type  = "6 months";
                } else if(timespan.equals("long_term")) {
                    type  = "1 year";
                }

                wrappedData.put("type", type);
                String id = UUID.randomUUID().toString();
                db.collection("WRAPPED").document(id).set(wrappedData);
                db.collection("USERS").document(username).update("savedWrapped", FieldValue.arrayUnion(id));
                Toast.makeText(getContext(), "Successfully saved!", Toast.LENGTH_SHORT).show();
            }
        });

        return view;
    }
}