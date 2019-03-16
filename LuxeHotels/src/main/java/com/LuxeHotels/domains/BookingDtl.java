package com.LuxeHotels.domains;

import java.util.Date;

import org.springframework.stereotype.Component;


@Component
public class BookingDtl {
	
	private String traveltype;
	private String startDate;
	private String endDate;
	private String hotelName;
	private String roomType;
	private String status;
	private String city;
	private String guests;
	
	
	
	public String getTraveltype() {
		return traveltype;
	}
	public void setTraveltype(String traveltype) {
		this.traveltype = traveltype;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String date) {
		this.startDate = date;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String date) {
		this.endDate = date;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGuests() {
		return guests;
	}
	public void setGuests(String guests) {
		this.guests = guests;
	}
	
	

}
