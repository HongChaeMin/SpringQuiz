package com.coals.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coals.lesson03.bo.RealEstateBO;
import com.coals.lesson03.model.RealEstate;

@RequestMapping("/lesson03")
@RestController
public class RealEstateRestController {

	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/quiz01/1")
	public RealEstate printRealEstate(
			@RequestParam(value="id") int id
			) {
		return realEstateBO.getRealEstate(id);
	}
	
	@RequestMapping("/quiz01/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rentPrice", defaultValue="1") Integer rentPrice
			) {
		return realEstateBO.getRentPriceList(rentPrice);
	}
	
	@RequestMapping("/quiz01/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price			
			) {
		return realEstateBO.getAreaPriceList(area, price);
	}
	
	@RequestMapping("/quiz02/1")
	public String quiz02_1() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		realEstate.setRentPrice(null);
		
		return "입력 성공 : " + realEstateBO.insertRealEstate(realEstate);
	}
	
	@RequestMapping("/quiz02/2")
	public String quiz02_2(@RequestParam("realtorId") int realtorId) {
		String address = "썅떼빌리버 오피스텔 814호";
		int area = 45;
		String type = "월세";
		int price = 100000;
		Integer rentPrice = 120;
		
		return "입력 성공 : " + realEstateBO.insertRealEstate(realtorId, address, area, type, price, rentPrice);
	}
	
	@RequestMapping("/quiz03") 
	public String quiz03(@RequestParam("id") int id) {
		return "입력 성공 : " + realEstateBO.updateRealEstate(id);
	}
	
	@RequestMapping("/quiz04")
	public String quiz04(@RequestParam("id") int id) {
		return "삭제 성공 : " + realEstateBO.deleteRealEstate(id);
	}
	
}
