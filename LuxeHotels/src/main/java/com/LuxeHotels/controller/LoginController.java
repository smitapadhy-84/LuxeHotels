package com.LuxeHotels.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.LuxeHotels.services.fbLogin.FBConnectionService;
import com.LuxeHotels.services.fbLogin.FBGraphService;



@Controller
public class LoginController {
	
	@Autowired
	FBConnectionService fbConn;
	@Autowired
	FBGraphService fbGraph;
	
	@RequestMapping("/login")
	public String login(Map<String, Object> model) {
		
		String fbAuthUrl = fbConn.getFBAuthUrl();
		model.put("fbAuthUrl", fbAuthUrl);
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String registerAsNewUser(Map<String, Object> model) {
		return "home";
	}
	
	
	@RequestMapping("/signInWithFb")
	public ModelAndView signInWithFb(ModelMap model , @RequestParam("code") String code,
			HttpServletRequest request) {
		
		
		if (code == null || code.equals("")) {
			throw new RuntimeException(
					"ERROR: Didn't get code parameter in callback.");
		}

		String accessToken = fbConn.getAccessToken(code);
		fbGraph.setAccessToken(accessToken);

		String graph = fbGraph.getFBGraph();
		Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
		request.getSession().setAttribute("fbProfile", fbProfileData);		
		request.getSession().setAttribute("userAuthenticated", true);
		
		 model.addAttribute("userId", fbProfileData.get("id"));
	     return new ModelAndView("redirect:/userBookings", model);

	}
	
	@RequestMapping("/signin")
	public ModelAndView signin(ModelMap model , @RequestParam("userName") String userName,
			HttpServletRequest request) {
		
		
		if (userName == null || userName.equals("")) {
			throw new RuntimeException(
					"ERROR: Didn't get userName parameter in callback.");
		}
		
		
		Map<String, String> fbProfileData = new HashMap<String, String>();
		fbProfileData.put("name", userName);
		
		switch (userName) {
		case "businessTraveller": 
			fbProfileData.put("id" , "1");
			break;
		case "familyVactioner": 
			fbProfileData.put("id" , "2");
			break;
		case "socialTraveller": 
			fbProfileData.put("id" , "3");
			break;
		case "default": 
			fbProfileData.put("id" , "1");
			break;
				 
		}
		
		
		request.getSession().setAttribute("fbProfile", fbProfileData);		
		request.getSession().setAttribute("userAuthenticated", true);
		
		 model.addAttribute("userId", fbProfileData.get("id"));
	     return new ModelAndView("redirect:/userBookings", model);

	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {
		
		request.getSession().setAttribute("fbProfile", null);		
		request.getSession().setAttribute("userAuthenticated", false);
		return new ModelAndView("redirect:/home");
		
	}
}
