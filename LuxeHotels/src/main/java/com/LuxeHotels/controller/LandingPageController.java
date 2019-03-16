package com.LuxeHotels.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LuxeHotels.domains.UserPersonlisedData;
import com.LuxeHotels.services.UserPersonalisationService;

@Controller
public class LandingPageController {

	
	@Autowired
	UserPersonalisationService service;
	
	
	
	@RequestMapping("/home")
	public String home(Map<String, Object> model, @RequestParam(value ="userId" , required=false) String userId) {
		if(userId != null)
		{
			UserPersonlisedData userData = service.getUserPersonalisedData(userId);
			model.put("userData", userData);	
		}
		return "home";
	}
	
	@RequestMapping("/rooms")
	public String rooms(Map<String, Object> model) {
		model.put("hotelName", "Luxe Hotel");
		return "rooms";
	}
	
	
	@RequestMapping("/hotels")
	public String hotels(Map<String, Object> model) {
		return "hotel";
	}
	
	@RequestMapping("/experience")
	public String experience(Map<String, Object> model) {
		return "experience";
	}
	

}