package com.LuxeHotels.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.LuxeHotels.dao.UserPersonalisationDao;
import com.LuxeHotels.domains.UserPersonlisedData;

@Component
public class UserPersonalisationService {
	
	@Autowired
	UserPersonalisationDao dao;

	public UserPersonlisedData getUserPersonalisedData(String userId) {
		return dao.getUserPersonalisedData(userId);
		
	}

}
