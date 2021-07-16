package com.coals.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson03.dao.RentPriceDAO;
import com.coals.lesson03.model.RealEstate;

@Service
public class RentPriceBO {

	@Autowired
	private RentPriceDAO rentPriceDAO;
	
	public RealEstate getPentPrice(int rentPrice) {
		return rentPriceDAO.selectRentPrice(rentPrice);
	}
	
}
