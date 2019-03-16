package com.LuxeHotels.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	public String myBookings(Map<String, Object> model, @RequestParam( value="userId" , required = false) String userId , 
			HttpServletRequest request) {
		
		boolean isAuthenticated = request.getSession().getAttribute("userAuthenticated")==null?false:(Boolean)request.getSession().getAttribute("userAuthenticated");
		
		if(!isAuthenticated)
		{
			return "redirect:/login"; 
		}
		
		UserPersonlisedData userData = service.getUserPersonalisedData(userId);
		model.put("userData", userData);
		
		model.put("hiddenGems", zService.searchRestaurantsInCity(52));
		return "userBookings";
	}
	

}