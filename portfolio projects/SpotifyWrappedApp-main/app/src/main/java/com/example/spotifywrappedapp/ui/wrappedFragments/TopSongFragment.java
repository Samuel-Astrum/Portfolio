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
import com.example.spotifywrappedapp.ui.models.Song;
import com.example.spotifywrappedapp.SpotifyHelper;
import com.example.spotifywrappedapp.ui.models.User;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link TopSongFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class TopSongFragment extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String CLIENT_ID = "de7e2494777e4ff09756cb8af3d362db";
    private static final String REDIRECT_URI = "spotifywrappedapp://auth";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public TopSongFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment TopSongFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static TopSongFragment newInstance(String param1, String param2) {
        TopSongFragment fragment = new TopSongFragment();
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
        View view = inflater.inflate(R.layout.fragment_top_song, container, false);
        SpotifyHelper.getTopSongs(getContext(), User.getAccessToken(), new SpotifyHelper.TopSongsCallback() {
            @Override
            public void onTopSongsReceived(ArrayList<Song> songs) {
                Log.d("all songs", songs.toString());
                User.setTopSongs(songs);
                ImageView topSongImage = view.findViewById(R.id.topSongImage);
                Picasso.get().load(songs.get(0).getImageURL()).into(topSongImage);
                for(int i = 1; i <= 5; i++) {
                    int artistTVID = getResources().getIdentifier("artist" + i, "id", getContext().getPackageName());
                    int songTVID = getResources().getIdentifier("song" + i, "id", getContext().getPackageName());
                    int imageViewID = getResources().getIdentifier("songImage" + i, "id", getContext().getPackageName());
                    TextView artistTV = view.findViewById(artistTVID);
                    TextView songTV = view.findViewById(songTVID);
                    ImageView imageView = view.findViewById(imageViewID);
                    if (artistTV != null && imageView != null && songTV != null) {
                        songTV.setText(songs.get(i-1).getName());
                        artistTV.setText(songs.get(i-1).getArtists().get(0));
                        String imageUrl = songs.get(i-1).getImageURL();
                        Picasso.get().load(imageUrl).into(imageView);
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