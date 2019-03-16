package com.LuxeHotels.domains;

import java.util.HashMap;

import org.springframework.stereotype.Component;

@Component
public class UserPersonlisedData {
	
	private String name;
	private String gender;
	private int userId;
	private BookingDtl bookingDtls;
	private HashMap personalisedExp;
	private HashMap personalisedServices;
	private HashMap recommendedFnB;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public BookingDtl getBookingDtls() {
		return bookingDtls;
	}
	public void setBookingDtls(BookingDtl bookingDtls) {
		this.bookingDtls = bookingDtls;
	}
	public HashMap getPersonalisedExp() {
		return personalisedExp;
	}
	public void setPersonalisedExp(HashMap personalisedExp) {
		this.personalisedExp = personalisedExp;
	}
	public HashMap getPersonalisedServices() {
		return personalisedServices;
	}
	public void setPersonalisedServices(HashMap personalisedServices) {
		this.personalisedServices = personalisedServices;
	}
	public HashMap getRecommendedFnB() {
		return recommendedFnB;
	}
	public void setRecommendedFnB(HashMap recommendedFnB) {
		this.recommendedFnB = recommendedFnB;
	}
	
	
	
	

}
