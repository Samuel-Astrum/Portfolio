package com.example.schedulingproject.ui.new_class;

import static com.example.schedulingproject.ClassActivity.newClass;
import static com.example.schedulingproject.ClassActivity.removeIndex;
import static com.example.schedulingproject.ClassActivity.removePrompt;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;

import com.example.schedulingproject.R;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link DeleteScreen#newInstance} factory method to
 * create an instance of this fragment.
 */
public class DeleteScreen extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;


    private EditText toBeDeleted;

    public DeleteScreen() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment DeleteScreen.
     */
    // TODO: Rename and change types and number of parameters
    public static DeleteScreen newInstance(String param1, String param2) {
        DeleteScreen fragment = new DeleteScreen();
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
        return inflater.inflate(R.layout.fragment_delete_screen, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        toBeDeleted = (EditText) getView().findViewById(R.id.user_delete_input);
        view.findViewById(R.id.delete).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String desiredDelete = toBeDeleted.getText().toString();
                for (int i = 0; i < newClass.size(); i++) {
                    if (desiredDelete.equals(newClass.get(i).getCourseName())) {
                        newClass.remove(i);
                        removePrompt = true;
                        removeIndex = i;
                        break;
                    }
                }
                NavHostFragment.findNavController(DeleteScreen.this).navigate(R.id.delete_to_home);
            }
        });

        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                NavHostFragment.findNavController(DeleteScreen.this).navigate(R.id.delete_to_home);
            }
        });
    }
}