package com.example.spotifywrappedapp.ui.wrappedFragments;


import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;

import static androidx.browser.customtabs.CustomTabsClient.getPackageName;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SpotifyHelper;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.firestore.FirebaseFirestore;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link TopArtistFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class TopArtistFragment extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    View view;
    private String mParam2;

    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    FirebaseFirestore db = FirebaseFirestore.getInstance();

    public TopArtistFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment TopArtistFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static TopArtistFragment newInstance(String param1, String param2) {
        TopArtistFragment fragment = new TopArtistFragment();
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
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_top_artist, container, false);

        updateUI();

        return view;
    }
    //JUST WRITING THIS HERE TEMPORARILY
//PURPOSE: CAPTURE A PART OF THE SCREEN AND RETRIEVE IT FOR LATER USE
    public static Bitmap getBitmapFromView(View view) {
        //Define a bitmap with the same size as view
        Bitmap returnedBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        //Bind a canvas to it
        Canvas canvas = new Canvas(returnedBitmap);
        //Get the view's background
        Drawable bgDrawable = view.getBackground();
        if (bgDrawable!=null)
            //has background drawable, then draw it on the canvas
            bgDrawable.draw(canvas);
        else
            //does not have background drawable, then draw white background on the canvas
            canvas.drawColor(Color.WHITE);
        // draw the view on the canvas
        view.draw(canvas);
        //return the bitmap
        return returnedBitmap;

    }
    public void updateUI() {
        SpotifyHelper.getTopArtists(getContext(), User.getAccessToken(), new SpotifyHelper.TopArtistsCallback() {
            @Override
            public void onTopArtistsReceived(ArrayList<Artist> artists) {
                Log.d("all artists", artists.toString());
                User.setTopArtists(artists);
                ImageView topArtistImage = view.findViewById(R.id.topArtistImage);
                Picasso.get().load(artists.get(0).getImageURL()).into(topArtistImage);
                for(int i = 1; i <= 5; i++) {
                    int textViewId = getResources().getIdentifier("artist" + i, "id", getContext().getPackageName());
                    int imageViewID = getResources().getIdentifier("artistImage" + i, "id", getContext().getPackageName());
                    TextView textView = view.findViewById(textViewId);
                    ImageView imageView = view.findViewById(imageViewID);
                    if (textView != null && imageView != null) {
                        textView.setText(artists.get(i-1).getName());
                        String imageUrl = artists.get(i-1).getImageURL();
                        Picasso.get().load(imageUrl).into(imageView);
                    }
                }
            }
            @Override
            public void onError(String errorMessage) {
                Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
            }
        });

    }
}