package com.coals.lesson03.dao;

import org.springframework.stereotype.Repository;

import com.coals.lesson03.model.RealEstate;

@Repository
public interface RentPriceDAO {
	
	public RealEstate selectRentPrice(int rentPrice);
	
}
