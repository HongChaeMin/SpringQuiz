package com.coals.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coals.lesson03.bo.RealEstateBO;
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
	
	@RequestMapping("/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rentPrice", defaultValue="1") Integer rentPrice
			) {
		return realEstateBO.getRentPriceList(rentPrice);
	}
	
	@RequestMapping("/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price			
			) {
		return realEstateBO.getAreaPriceList(area, price);
	}
	
}
