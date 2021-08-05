package com.coals.lesson06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coals.lesson06.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBooking();

	public Boolean deleteBooking(int id);

	public void insertBooking(
			@Param("name") String name
			, @Param("date") Date date
			, @Param("day") int day
			, @Param("headcount") int headcount
			, @Param("phoneNumber") String phoneNumber
			, @Param("state") String state
	);

	public Booking selectBookingByName(String name);
	
}
