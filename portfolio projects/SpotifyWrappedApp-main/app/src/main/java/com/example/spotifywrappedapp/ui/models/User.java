package com.example.spotifywrappedapp.ui.models;

import java.util.ArrayList;

public class User {
    private static String topArtist;
    private static String topSong;
    private static String genre;
    private static String personality;
    private static ArrayList<Artist> topArtists;
    private static ArrayList<Song> topSongs;
    private static int minutesListened;

    private static String accessToken;

    private User(String topArtist, String topSong, String genre, String personality, ArrayList<Artist> topArtists, ArrayList<Song> topSongs, int minutesListened) {
        this.topArtist = topArtist;
        this.topSong = topSong;
        this.genre = genre;
        this.personality = personality;
        this.topArtists = topArtists;
        this.topSongs = topSongs;
        this.minutesListened = minutesListened;
    }

    public static String getTopArtist() {
        return topArtist;
    }

    public static void setTopArtist(String topArtist) {
        User.topArtist = topArtist;
    }

    public static String getTopSong() {
        return topSong;
    }

    public static void setTopSong(String topSong) {
        User.topSong = topSong;
    }

    public static String getGenre() {
        return genre;
    }

    public static void setGenre(String genre) {
        User.genre = genre;
    }

    public static String getPersonality() {
        return personality;
    }

    public static void setPersonality(String personality) {
        User.personality = personality;
    }

    public static ArrayList<Artist> getTopArtists() {
        return topArtists;
    }

    public static void setTopArtists(ArrayList<Artist> topArtists) {
        User.topArtists = topArtists;
    }

    public static ArrayList<Song> getTopSongs() {
        return topSongs;
    }

    public static void setTopSongs(ArrayList<Song> topSongs) {
        User.topSongs = topSongs;
    }

    public static int getMinutesListened() {
        return minutesListened;
    }

    public static void setMinutesListened(int minutesListened) {
        User.minutesListened = minutesListened;
    }

    public static void addSong(Song song) {
        User.topSongs.add(song);
    }

    public static void addArtist(Artist artist) {
        User.topArtists.add(artist);
    }

    public void removeSong(Song song) {
        for (int i = 0; i < topSongs.size(); i++) {
            if (topSongs.get(i).equals(song)) {
                topSongs.remove(i);
                break;
            }
        }
    }

    public void removeArtist(Artist artist) {
        for (int i = 0; i < topArtists.size(); i++) {
            if (topArtists.get(i).equals(artist)) {
                topArtists.remove(i);
                break;
            }
        }
    }
    public static String getAccessToken() {
        return accessToken;
    }

    public static void setAccessToken(String accessToken) {
        User.accessToken = accessToken;
    }
}

