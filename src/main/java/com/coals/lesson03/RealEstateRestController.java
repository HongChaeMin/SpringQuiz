package com.coals.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coals.lesson03.bo.RealEstateBO;
import com.coals.lesson03.bo.RentPriceBO;
import com.coals.lesson03.model.RealEstate;

@RequestMapping("/lesson03/quiz01")
@RestController
public class RealEstateRestController {

	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	public RealEstate printRealEstate(
			@RequestParam(value="id") int id
			) {
		return realEstateBO.getRealEstate(id);
	}
	
	@Autowired
	private RentPriceBO rentPriceBO;
	
	@RequestMapping("/2")
	public RealEstate quiz01_2(
			@RequestParam(value="rentPrice", defaultValue="1") int rentPrice
			) {
		return rentPriceBO.getPentPrice(rentPrice);
	}
	
	@RequestMapping("/3")
	public RealEstate quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price			
			) {
		return realEstateBO.getAreaPrice(area, price);
	}
	
}
