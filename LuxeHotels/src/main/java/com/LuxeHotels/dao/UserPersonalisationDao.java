package com.LuxeHotels.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.LuxeHotels.domains.BookingDtl;
import com.LuxeHotels.domains.UserPersonlisedData;



@Component
public class UserPersonalisationDao {
	
	@Autowired
	UserPersonlisedData userData;
	@Autowired
	BookingDtl bookingDtls;

	public UserPersonlisedData getUserPersonalisedData(String userId) {
		
		
		switch (userId) {
		case "1": 
			userData = getBusinessTravelerDtl();
			break;
		case "2": 
			userData = getFamilyVacationerDtl();
			break;
		case "3": 
			userData = getSocialTouristDtl();
			break;
		case "4": 
			userData = getDefault();
			break;
		case "10157268001123255":
			userData = getBusinessTravelerDtl();
			break;
				
		}
		
		return userData;
	}

	private UserPersonlisedData getDefault() {
		userData = new UserPersonlisedData();
		return userData;
	}

	private UserPersonlisedData getSocialTouristDtl() {
		
		userData = new UserPersonlisedData();
		userData.setName("Social Traveller");
		userData.setUserId(2);
		
		
		bookingDtls = new BookingDtl();
		bookingDtls.setCity("Singapore");
		bookingDtls.setHotelName("Luxe Hotels");
		bookingDtls.setRoomType("Cottage");
		bookingDtls.setStartDate("11-Mar-2019");
		bookingDtls.setEndDate("11-Apr-2019");
		bookingDtls.setStatus("Checked-In");
		bookingDtls.setGuests("1 Adult");
		
		userData.setBookingDtls(bookingDtls);
		
		HashMap exp = new HashMap();
		HashMap services = new HashMap();
		
		exp.put("Day with locals", "images/localTourist.jpeg");
		exp.put("Experience a local ceremony", "images/localCeremony.jpeg");
		exp.put("Volunteer for NGO", "images/volunteer.jpeg");
		
		services.put("Rent a bike", "images/cycle.jpg");
		services.put("Cook with Chef", "images/pram.jpg");
		
		userData.setPersonalisedExp(exp);
		userData.setPersonalisedServices(services);
		
		return userData;
	}

	private UserPersonlisedData getFamilyVacationerDtl() {
		userData = new UserPersonlisedData();
		userData.setName("Family Vacation");
		userData.setUserId(2);
		
		
		bookingDtls = new BookingDtl();
		bookingDtls.setCity("Singapore");
		bookingDtls.setHotelName("Luxe Hotels");
		bookingDtls.setRoomType("Family Loft");
		bookingDtls.setStartDate("14-Mar-2019");
		bookingDtls.setEndDate("25-Mar-2019");
		bookingDtls.setStatus("Checked-In");
		bookingDtls.setGuests("2 Adults , 2 Childern");
		
		userData.setBookingDtls(bookingDtls);
		
		HashMap exp = new HashMap();
		HashMap services = new HashMap();
		
		exp.put("Outdoor Movie Nite @Luxe", "images/movie-night.jpeg");
		exp.put("Mini Segway Tour", "images/segway.jpg");
		exp.put("Sand Castle Lessons", "images/sand-art.jpeg");
		
		services.put("Hire a nanny", "images/nanny.jpg");
		services.put("Rent Baby Gear", "images/pram.jpg");
		
		userData.setPersonalisedExp(exp);
		userData.setPersonalisedServices(services);
		
		return userData; 
	}

	private UserPersonlisedData getBusinessTravelerDtl() {
		
		userData = new UserPersonlisedData();
		userData.setName("Business Traveller");
		userData.setGender("Male");
		userData.setUserId(1);
		
		
		bookingDtls = new BookingDtl();
		bookingDtls.setCity("Singapore");
		bookingDtls.setHotelName("Luxe Hotels");
		bookingDtls.setRoomType("Executive Room");
		bookingDtls.setStartDate("10-Apr-2019");
		bookingDtls.setEndDate("13-Apr-2019");
		bookingDtls.setStatus("Booked");
		bookingDtls.setGuests("1 Adult");
		
		userData.setBookingDtls(bookingDtls);
		
		HashMap exp = new HashMap();
		HashMap services = new HashMap();
		
		exp.put("HIIT with Mike", "images/hiit-training.jpeg");
		exp.put("Wine Tasting", "images/wine-tasting.jpeg");
		exp.put("Express Tour", "images/destination-4.jpg");
		
		services.put("Laundromat", "images/laundry.jpg");
		services.put("Short Reads", "images/kindle.jpg");
		
		
		userData.setPersonalisedExp(exp);
		userData.setPersonalisedServices(services);
		
		return userData;
	}

}
