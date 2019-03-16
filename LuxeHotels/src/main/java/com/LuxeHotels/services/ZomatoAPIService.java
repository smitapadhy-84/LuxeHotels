package com.LuxeHotels.services;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.LuxeHotels.config.Config;
import com.LuxeHotels.domains.Restaurant;
import com.LuxeHotels.domains.RestaurantSearchResponse;

@Component
public class ZomatoAPIService {
	
	
	@Autowired
	Config config;

	public Object searchRestaurantsInCity(int cityId) {
		
		HashMap hiddenGems = new HashMap<String, String>();
		
		RestTemplate restTemplate = new RestTemplate();
		
		 HttpHeaders headers = new HttpHeaders();
		 
		 headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		 headers.setContentType(MediaType.APPLICATION_JSON);;
		 headers.set("user-key", config.getZomatoApiUserKey());
		 HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);

		 ResponseEntity<RestaurantSearchResponse> response = restTemplate
				 .exchange(config.getZomatoApiUrl(), 
				HttpMethod.GET, entity,  RestaurantSearchResponse.class);
		 
		 RestaurantSearchResponse restaurantsRes = response.getBody();
		 List<Restaurant> resList = restaurantsRes.getRestaurants();
		 
		 
		 
		 for(Restaurant restaurant : resList){
			 
			 hiddenGems.put(restaurant.getRestaurant().getName(),restaurant.getRestaurant().getFeatured_image());
			}
		return hiddenGems;
	}

}
