package com.example.spotifywrappedapp;

import android.content.Context;
import android.util.Log;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.spotifywrappedapp.ui.models.Artist;
import com.example.spotifywrappedapp.ui.models.Song;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SpotifyHelper {

    private static RequestQueue mRequestQueue;
    private static StringRequest mStringRequest;

    private static String timespan = "medium_term";

    public static void setTimespan(String timespan) {
        SpotifyHelper.timespan = timespan;
    }

    public interface TopArtistsCallback {
        void onTopArtistsReceived(ArrayList<Artist> artists);
        void onError(String errorMessage);
    }

    public interface TopSongsCallback {
        void onTopSongsReceived(ArrayList<Song> songs);
        void onError(String errorMessage);
    }

    public static void getTopArtists(Context context, String accessToken, TopArtistsCallback callback) {
        String url = " https://api.spotify.com/v1/me/top/artists?time_range=" + timespan + "&limit=5";

        mRequestQueue = Volley.newRequestQueue(context);
        ArrayList<Artist> artistList = new ArrayList<>();
        mStringRequest = new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                //Toast.makeText(context, "Response :" + response.toString(), Toast.LENGTH_LONG).show();
                try {
                    JSONObject object = new JSONObject(response);
                    JSONArray items = (JSONArray) object.get("items");
                    for(int i = 0; i < items.length(); i++) {
                        JSONObject artist = items.getJSONObject(i);
                        String name = artist.get("name").toString();
                        JSONArray genres = (JSONArray) artist.get("genres");
                        ArrayList<String> genreList = new ArrayList<>();
                        for(int j = 0; j < genres.length(); j++) {
                            genreList.add(genres.get(j).toString());
                        }
                        String imageURL = ((JSONArray) artist.get("images")).getJSONObject(0).get("url").toString();

                        Artist artistObj = new Artist(name, genreList, imageURL);
                        artistList.add(artistObj);
                        Log.d("artist #" + i, artistObj.toString());
                    }
                    callback.onTopArtistsReceived(artistList);
                } catch (JSONException e) {
                    callback.onError("Error parsing JSON response");
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                callback.onError("Error getting top artists: " + error.getMessage());
            }
        }) {
            @Override
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = new HashMap<>();
                // Add your access token as a header
                headers.put("Authorization", "Bearer " + accessToken);
                return headers;
            }
        };

        mRequestQueue.add(mStringRequest);

    }

    public static String getTimespan() {
        return timespan;
    }

    public static void getTopSongs(Context context, String accessToken, TopSongsCallback callback) {
        String url = " https://api.spotify.com/v1/me/top/tracks?time_range=" + timespan + "&limit=5";

        mRequestQueue = Volley.newRequestQueue(context);
        ArrayList<Song> songList = new ArrayList<>();
        mStringRequest = new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                //Toast.makeText(context, "Response :" + response.toString(), Toast.LENGTH_LONG).show();
                try {
                    JSONObject object = new JSONObject(response);
                    JSONArray items = (JSONArray) object.get("items");
                    for(int i = 0; i < items.length(); i++) {
                        JSONObject song = items.getJSONObject(i);
                        String name = song.get("name").toString();
                        JSONArray artists = (JSONArray) song.get("artists");
                        ArrayList<String> artistList = new ArrayList<>();
                        for(int j = 0; j < artists.length(); j++) {
                            JSONObject artistJSON = (JSONObject) artists.get(j);
                            artistList.add(artistJSON.get("name").toString());
                        }
                        JSONArray images = song.getJSONObject("album").getJSONArray("images");
                        //String imageURL = ((JSONArray) song.get("images")).getJSONObject(0).get("url").toString();
                        String imageURL = images.getJSONObject(0).getString("url");
                        Song songObj = new Song(name, artistList, imageURL);
                        songList.add(songObj);
                        Log.d("artist #" + i, songObj.toString());
                    }
                    callback.onTopSongsReceived(songList);
                } catch (JSONException e) {
                    callback.onError("Error parsing JSON response");
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                callback.onError("Error getting top artists: " + error.getMessage());
            }
        }) {
            @Override
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = new HashMap<>();
                // Add your access token as a header
                headers.put("Authorization", "Bearer " + accessToken);
                return headers;
            }
        };

        mRequestQueue.add(mStringRequest);

    }
}
