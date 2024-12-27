package com.example.spotifywrappedapp.ui.LLM;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.ui.models.User;
import com.google.ai.client.generativeai.GenerativeModel;
import com.google.ai.client.generativeai.java.GenerativeModelFutures;
import com.google.ai.client.generativeai.type.Content;
import com.google.ai.client.generativeai.type.GenerateContentResponse;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

import java.util.concurrent.Executor;

public class llmFragment extends Fragment {



    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;

    private TextView textView;
    private Button style;
    private Button music;

    private final String apiKey = "AIzaSyDP06AH1rRVSV5iEXuA8dhEtLrOYyQXr8w";



    public llmFragment() {
        // Required empty public constructor
    }

    public static llmFragment newInstance(String param1, String param2) {
        llmFragment fragment = new llmFragment();
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
        return inflater.inflate(R.layout.fragment_llm, container, false);
    }
    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        int test = 5;

        Log.d("STATUSOFLLM", "is this working?");
        textView = this.getView().findViewById(R.id.textView);

        GenerativeModel generativeModel = new GenerativeModel("gemini-pro", apiKey);
        GenerativeModelFutures modelFutures = GenerativeModelFutures.from(generativeModel);
        Content content = new Content.Builder().addText("Give clothing style recommendations for someone who listens to " + User.getGenre() +
                ". Respond in the format: According to AI, we think that you should wear (add clothing recommendations), since you listen to " +
                User.getGenre() + ".").build();

        ListenableFuture<GenerateContentResponse> future = modelFutures.generateContent(content);
        Executor executor = this.getActivity().getMainExecutor();
        Futures.addCallback(
                future,
                new FutureCallback<GenerateContentResponse>() {
                    public void onSuccess(GenerateContentResponse result) {
                        String resultText = result.getText();
                        setText(resultText);
                    }

                    public void onFailure(Throwable t) {
                        Log.d("STATUSOFLLM", "The LLM failed to generate a response");
                        t.printStackTrace();
                    }
                }, executor);

        //button implementation

        style = this.getView().findViewById(R.id.button_style);
        style.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Content content = new Content.Builder().addText("Give clothing style recommendations for someone who listens to " + User.getGenre() +
                        ". Respond in the format: According to AI, we think that you should wear (add clothing recommendations), since you listen to " +
                        User.getGenre() + ".").build();
                ListenableFuture<GenerateContentResponse> future = modelFutures.generateContent(content);
                Futures.addCallback(
                        future,
                        new FutureCallback<GenerateContentResponse>() {
                            public void onSuccess(GenerateContentResponse result) {
                                String resultText = result.getText();
                                setText(resultText);
                            }

                            public void onFailure(Throwable t) {
                                Log.d("STATUSOFLLM", "The LLM failed to generate a response");
                                t.printStackTrace();
                            }
                        }, executor);
            }
        });

        music = this.getView().findViewById(R.id.button_recs);
        music.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Content content = new Content.Builder().addText("Give music artist recommendations for someone who listens to " + User.getGenre() +
                        ". Respond in the format: According to AI, we think that you should listen to (add artist recommendations), since you listen to " +
                        User.getGenre() + ".").build();
                ListenableFuture<GenerateContentResponse> future = modelFutures.generateContent(content);
                Futures.addCallback(
                        future,
                        new FutureCallback<GenerateContentResponse>() {
                            public void onSuccess(GenerateContentResponse result) {
                                String resultText = result.getText();
                                setText(resultText);
                            }

                            public void onFailure(Throwable t) {
                                Log.d("STATUSOFLLM", "The LLM failed to generate a response");
                                t.printStackTrace();
                            }
                        }, executor);
            }
        });


    }

    public void setText(String text) {
        textView.setText(text);
    }

}







