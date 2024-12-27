package com.example.spotifywrappedapp;

import static android.content.ContentValues.TAG;
import static android.provider.Settings.System.getString;


import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.Saved;
import com.example.spotifywrappedapp.ui.models.Song;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.List;

public class PostAdapter extends RecyclerView.Adapter<PostAdapter.ViewHolder> {

    private LayoutInflater mInflater;
    private List<Saved> mData;
    Context context;

    public PostAdapter(Context context, List<Saved> savedWrapped) {
        this.context = context;
        this.mInflater = LayoutInflater.from(context);
        this.mData = savedWrapped;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = mInflater.inflate(R.layout.recyclerview_post, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        holder.mDate.setText(mData.get(position).getDate());
        holder.mType.setText(mData.get(position).getType());
        holder.mUsername.setText(context.getString(R.string.feed_post_header, mData.get(position).getUsername()));
//        holder.mCaption.setText(mData.get(position).getCaption());

        ArrayList<Song> songs = mData.get(position).getSongs();
        ArrayList<Artist> artists = mData.get(position).getArtists();

        ImageView topArtistImage = holder.view.findViewById(R.id.topArtistImage);
        Picasso.get().load(artists.get(0).getImageURL()).into(topArtistImage);
        for(int i = 1; i <= 5; i++) {
            int artistTVID = context.getResources().getIdentifier("artist" + i, "id", context.getPackageName());
            int songTVID = context.getResources().getIdentifier("song" + i, "id", context.getPackageName());
            //int imageViewID = getResources().getIdentifier("songImage" + i, "id", getContext().getPackageName());
            TextView artistTV = holder.view.findViewById(artistTVID);
            TextView songTV = holder.view.findViewById(songTVID);
            //ImageView imageView = view.findViewById(imageViewID);
            if (artistTV != null && songTV != null) {
                songTV.setText(songs.get(i-1).getName());
                artistTV.setText(artists.get(i-1).getName());
                //String imageUrl = songs.get(i-1).getImageURL();
            }
        }

    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView mDate;
        TextView mType;
        TextView mCaption;
        View view;
        TextView mUsername;
        /**
         * Constructor for the ViewHolder class.
         *
         * @param itemView The View object representing an assignment item.
         */
        public ViewHolder(View itemView) {
            super(itemView);
            view = itemView;
            mDate = itemView.findViewById(R.id.datePost);
            mType = itemView.findViewById(R.id.typePost);
//            mCaption = itemView.findViewById(R.id.captionPost);
            mUsername = itemView.findViewById(R.id.usernamePost);
        }
    }
}
