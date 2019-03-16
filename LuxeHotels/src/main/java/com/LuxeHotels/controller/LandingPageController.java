package com.LuxeHotels.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LuxeHotels.domains.SearchForm;
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
		model.put("searchForm", new SearchForm());
		model.put("searchExpForm",  new SearchForm());
		
		return "home";
	}
	
	@RequestMapping(value="/rooms")
	public String rooms(Map<String, Object> model ,@ModelAttribute("searchForm") SearchForm form) {
		model.put("searchData", form);
		return "rooms";
	}
	
	
	@RequestMapping("/hotels")
	public String hotels(Map<String, Object> model) {
		return "hotels";
	}
	
	@RequestMapping("/experience")
	public String experience(Map<String, Object> model) {
		return "experiences";
	}
	

}