package com.LuxeHotels.controller;

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
}
