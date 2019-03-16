package com.LuxeHotels.domains;

import java.util.List;

public class RestaurantSearchResponse {
    private int results_found;
    private int results_start;
    private int results_shown;
    private List<Restaurant> restaurants;

    public int getResultsFound() {
        return results_found;
    }

    public int getResultsStart() {
        return results_start;
    }

    public int getResultsShown() {
        return results_shown;
    }

    public List<Restaurant> getRestaurants() {
        return restaurants;
    }
}
