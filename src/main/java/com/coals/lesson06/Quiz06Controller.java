package com.coals.lesson06;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coals.lesson06.bo.BookingBO;
import com.coals.lesson06.bo.FavoriteBO;
import com.coals.lesson06.model.Booking;

@Controller
public class Quiz06Controller {

	@Autowired
	private FavoriteBO favoriteBO;
	
	@Autowired
	private BookingBO bookingBO;
	
	@RequestMapping("/lesson06/favoriteAdd")
	public String favoriteAdd() {
		return "lesson06/favoriteAdd";
	}
	
	// AJAX의 요청이 왔을 때,
	// - 서버 쪽에서 @ResponseBody 어노테이션을 사용해야 한다
	// - 리턴 값이 반드시 있어야 한다 (String or JSON)
	@PostMapping("/lesson06/favoriteAddData")
	@ResponseBody
	public String favoriteAddData(
			Model model
			, @RequestParam("name") String name
			, @RequestParam("url") String url
			) {
		favoriteBO.insertFavorite(name, url);
		
		return "success";
	}
	
	@RequestMapping("/lesson06/favoriteAddAfter")
	public String favoriteAddAfter(Model model) {
		model.addAttribute("favorite", favoriteBO.selectFavorite());
		
		return "lesson06/favoriteAddAfterView";
	}
	
	@GetMapping("/lesson06/isDuplication")
	@ResponseBody
	public Map<String, Boolean> isDuplication(
			@RequestParam("url") String url
			) {
		Map<String, Boolean> result = new HashMap<>();
		result.put("isDupliction", favoriteBO.existFavoriteByUrl(url));
		return result;
	}
	
	@GetMapping("/lesson06/deleteFavorite")
	public String deleteFavorite(
			@RequestParam("id") int id
			) {
		favoriteBO.deleteFavorite(id);
		
		return "success";
	}
	
	@RequestMapping("/lesson06/bookingMain")
	public String mainView() {
		return "lesson06/booking/bookingMain";
	}
	
	@RequestMapping("/lesson06/bookingReservation")
	public String reservationView() {
		return "lesson06/booking/bookingReservation";
	}
	
	@RequestMapping("/lesson06/bookingReservationList")
	public String reservationListView(Model model) {
		model.addAttribute("bookingList", bookingBO.selectBooking());
		
		return "lesson06/booking/bookingReservationList";
	}
	
	@RequestMapping("/lesson06/delete_booking")
	@ResponseBody
	public Map<String, Boolean> deleteBooking(
			@RequestParam("booking_id") int id
			) {
		Map<String, Boolean> result = new HashMap<>();
		result.put("result", bookingBO.deleteBooking(id));
		
		return result;
	}
	
	@RequestMapping("/lesson06/booking_add_data")
	@ResponseBody
	public String bookingAddData(
				@RequestParam("name") String name
				, @RequestParam("date") Date date
				, @RequestParam("day") int day
				, @RequestParam("headcount") int headcount
				, @RequestParam("phoneNumber") String phoneNumber
			) {
		bookingBO.insertBooking(name, date, day, headcount, phoneNumber, "대기중");
		
		return "success";
	}
	
	@RequestMapping("/lesson06/bookingCheck")
	@ResponseBody
	public Booking bookingCheck(
				@RequestParam("name") String name
			) {
		Booking booking = bookingBO.selectBooking(name);
		
		return booking;
	}
	
}
