package com.example.schedulingproject.ui.back;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.schedulingproject.ClassActivity;
import com.example.schedulingproject.FirstActivity;
import com.example.schedulingproject.R;
import com.example.schedulingproject.ToDoActivity;
import com.example.schedulingproject.databinding.ActivityFirstBinding;
import com.example.schedulingproject.databinding.FragmentBackBinding;
import com.google.android.material.bottomnavigation.BottomNavigationView;
//import com.example.classviewportion.databinding.FragmentDashboardBinding;

public class BackFragment extends Fragment {


    //private FragmentDashboardBinding binding;
    private FragmentBackBinding binding;




    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        BackViewModel dashboardViewModel =
                new ViewModelProvider(this).get(BackViewModel.class);

        binding = FragmentBackBinding.inflate(inflater, container, false);
        View root = binding.getRoot();




        //final TextView textView = binding.textDashboard;
        //dashboardViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);
        return root;
    }





    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}
