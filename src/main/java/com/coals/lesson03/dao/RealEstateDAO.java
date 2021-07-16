package com.coals.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coals.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(int id);
	
	public RealEstate selectAreaPrice(@Param ("area") int area, @Param ("price") int price);
}
