package com.example.spotifywrappedapp.ui.models;

import android.os.Parcel;
import android.os.Parcelable;

import androidx.annotation.NonNull;

import java.util.ArrayList;

public class Saved implements Parcelable {
    private ArrayList<Artist> artists;
    private ArrayList<Song> songs;

    private String username;

    public String getWrappedID() {
        return wrappedID;
    }

    public void setWrappedID(String wrappedID) {
        this.wrappedID = wrappedID;
    }

    private String wrappedID;

    private String caption;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    private String date;
    private String type;

    public Saved(String wrappedID, ArrayList<Artist> artists, ArrayList<Song> songs, String date, String type) {
        this.wrappedID = wrappedID;
        this.artists = artists;
        this.songs = songs;
        this.date = date;
        this.type = type;
    }

    @Override
    public String toString() {
        return "Saved{" +
                "artists=" + artists +
                ", songs=" + songs +
                ", date='" + date + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    protected Saved(Parcel in) {
        artists = in.createTypedArrayList(Artist.CREATOR);
        songs = in.createTypedArrayList(Song.CREATOR);
//        username = in.readString();
//        caption = in.readString();
        date = in.readString();
        type = in.readString();
        wrappedID = in.readString();
    }

    public static final Creator<Saved> CREATOR = new Creator<Saved>() {
        @Override
        public Saved createFromParcel(Parcel in) {
            return new Saved(in);
        }

        @Override
        public Saved[] newArray(int size) {
            return new Saved[size];
        }
    };

    public ArrayList<Artist> getArtists() {
        return artists;
    }

    public void setArtists(ArrayList<Artist> artists) {
        this.artists = artists;
    }

    public ArrayList<Song> getSongs() {
        return songs;
    }

    public void setSongs(ArrayList<Song> songs) {
        this.songs = songs;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeTypedList(artists);
        parcel.writeTypedList(songs);
        parcel.writeString(date);
        parcel.writeString(type);
        parcel.writeString(wrappedID);
//        parcel.writeString(username);
//        parcel.writeString(caption);
    }
}
