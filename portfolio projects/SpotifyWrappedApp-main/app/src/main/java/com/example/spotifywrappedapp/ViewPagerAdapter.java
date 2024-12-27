package com.example.spotifywrappedapp;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import com.example.spotifywrappedapp.ui.home.HomeFragment;
import com.example.spotifywrappedapp.ui.wrappedFragments.SummaryFragment;
import com.example.spotifywrappedapp.ui.wrappedFragments.TimespanFragment;
import com.example.spotifywrappedapp.ui.wrappedFragments.TopArtistFragment;
import com.example.spotifywrappedapp.ui.wrappedFragments.TopGenresFragment;
import com.example.spotifywrappedapp.ui.wrappedFragments.TopSongFragment;

/**
 * This class represents a ViewPager2 adapter responsible for handling the fragments displayed in a ViewPager.
 * It provides the appropriate fragment based on the selected position.
 */
public class ViewPagerAdapter extends FragmentStateAdapter {

    /**
     * Constructor for the MyViewPagerAdapter.
     *
     * @param fragmentActivity The parent Fragment that will host the ViewPager.
     */
    public ViewPagerAdapter(@NonNull HomeFragment fragmentActivity) {
        super(fragmentActivity);
    }

    /**
     * Called to instantiate the fragment for the given position.
     *
     * @param position The position of the fragment in the ViewPager.
     * @return A new Fragment instance corresponding to the specified position.
     */
    @NonNull
    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case 0:
                return new TimespanFragment();
            case 1:
                return new TopSongFragment();
            case 2:
                return new TopArtistFragment();
            case 3:
                return new TopGenresFragment();
            case 4:
                return new SummaryFragment();
            default:
                return new TopSongFragment();
        }
    }

    /**
     * Returns the total number of fragments to be displayed in the ViewPager.
     *
     * @return The total number of fragments.
     */
    @Override
    public int getItemCount() {
        return 5 ;
    }
}
