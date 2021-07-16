package com.coals.lesson03.dao;

import org.springframework.stereotype.Repository;

import com.coals.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(int id);
	
}
