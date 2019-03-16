package com.LuxeHotels.domains;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Component

public class Restaurant {
	
    private RestaurantInfo restaurant;

    public RestaurantInfo getRestaurant() {
        return restaurant;
    }
	
	

}
