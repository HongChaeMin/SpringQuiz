package com.coals.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson06.dao.BookingDAO;
import com.coals.lesson06.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> selectBooking() {
		return bookingDAO.selectBooking();
	}

	public Boolean deleteBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}

	public void insertBooking(String name, Date date, int day, int headcount, String phoneNumber, String string) {
		bookingDAO.insertBooking(name, date, day, headcount, phoneNumber, string);		
	}

	public Booking selectBooking(String name) {
		return bookingDAO.selectBookingByName(name);
	}

}
