package com.example.spotifywrappedapp;

import static android.content.ContentValues.TAG;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.example.spotifywrappedapp.ui.models.Saved;

import java.util.ArrayList;
import java.util.List;

public class SavedWrappedAdapter extends RecyclerView.Adapter<SavedWrappedAdapter.ViewHolder> {

    private LayoutInflater mInflater;
    private List<Saved> mData;
    Context context;

    public SavedWrappedAdapter(Context context, List<Saved> savedWrapped) {
        this.context = context;
        this.mInflater = LayoutInflater.from(context);
        this.mData = savedWrapped;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = mInflater.inflate(R.layout.recyclerview_saved, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        holder.mDate.setText(mData.get(position).getDate());
        holder.mType.setText(mData.get(position).getType());
    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView mDate;
        TextView mType;
        CardView mCardView;
        /**
         * Constructor for the ViewHolder class.
         *
         * @param itemView The View object representing an assignment item.
         */
        public ViewHolder(View itemView) {
            super(itemView);
            mDate = itemView.findViewById(R.id.date);
            mType = itemView.findViewById(R.id.type);
            mCardView = itemView.findViewById(R.id.cardView);
            mCardView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    int position = getAdapterPosition();
                    Saved saved = mData.get(position);


                    Intent intent = new Intent(context, SavedViewActivity.class);
                    intent.putExtra("saved", saved);
                    context.startActivity(intent);
                }
            });
        }
    }
}
