package com.LuxeHotels.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LuxeHotels.domains.UserPersonlisedData;
import com.LuxeHotels.services.UserPersonalisationService;
import com.LuxeHotels.services.ZomatoAPIService;

@Controller
public class UserBookingController {
	
	
	@Autowired
	UserPersonalisationService service;
	
	@Autowired
	ZomatoAPIService zService;
	

	
	@RequestMapping("/userBookings")
	public String myBookings(Map<String, Object> model, @RequestParam("userId") String userId) {
		
		UserPersonlisedData userData = service.getUserPersonalisedData(userId);
		model.put("userData", userData);
		
		model.put("hiddenGems", zService.searchRestaurantsInCity(52));
		return "userBookings";
	}
	

}