package com.coals.lesson03;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coals.lesson03.bo.RealEstateBO;
import com.coals.lesson03.model.RealEstate;

@RequestMapping("/lesson03/quiz01")
@RestController
public class RealEstateRestController {

	private RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	public RealEstate printRealEstate(
			@RequestParam(value="id") int id
			) {
		return realEstateBO.getRealEstate(id);
	}
	
}
