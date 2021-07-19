package com.coals.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson03.dao.RealEstateDAO;
import com.coals.lesson03.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}
	
	public List<RealEstate> getRentPriceList(Integer rentPrice) {
		return realEstateDAO.selectRentPriceList(rentPrice);
	}
	
	public List<RealEstate> getAreaPriceList(int area, int price) {
		return realEstateDAO.selectAreaPriceList(area, price);
	}
	
	public int insertRealEstate(RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}
	
	public int insertRealEstate(int realtorId, String address, int area, String type, int price, Integer rentPrice) {
		return realEstateDAO.insertRealEstate(realtorId, address, area, type, price, rentPrice);
	}
	
}
