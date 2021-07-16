package com.coals.lesson03.bo;

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
	
	public RealEstate getAreaPrice(int area, int price) {
		return realEstateDAO.selectAreaPrice(area, price);
	}
}
