package com.example.spotifywrappedapp.ui.wrappedFragments;

import android.content.Context;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

import com.example.spotifywrappedapp.R;
import com.example.spotifywrappedapp.SpotifyHelper;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link TimespanFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class TimespanFragment extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;
    private FragmentCallback callback;

    public TimespanFragment() {
        // Required empty public constructor
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (context instanceof FragmentCallback) {
            callback = (FragmentCallback) context;
        } else {
            throw new RuntimeException(context.toString() + " must implement FragmentCallback");
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        callback = null;
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment personality.
     */
    // TODO: Rename and change types and number of parameters
    public static TimespanFragment newInstance(String param1, String param2) {
        TimespanFragment fragment = new TimespanFragment();
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
        View view = inflater.inflate(R.layout.fragment_timespan, container, false);

        Spinner timeSpinner = view.findViewById(R.id.timeSpinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(
                getContext(),
                R.array.timespan_array,
                android.R.layout.simple_spinner_dropdown_item
        );

        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        timeSpinner.setAdapter(adapter);
        timeSpinner.setSelection(1);

        Button setBtn = view.findViewById(R.id.setBtn);
        setBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String time = timeSpinner.getSelectedItem().toString();
                if(time.equals("4 weeks")) {
                    SpotifyHelper.setTimespan("short_term");
                } else if(time.equals("6 months")) {
                    SpotifyHelper.setTimespan("medium_term");
                } else if(time.equals("1 year")) {
                    SpotifyHelper.setTimespan("long_term");
                }
                if (callback != null) {
                    callback.onFragmentRefresh();
                }
            }
        });

        return view;
    }

    public interface FragmentCallback {
        void onFragmentRefresh();
    }

}