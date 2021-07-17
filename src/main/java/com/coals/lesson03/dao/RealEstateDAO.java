package com.coals.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coals.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(int id);
	
	public List<RealEstate> selectRentPriceList(@Param ("rentPrice") Integer rentPrice);
	
	public List<RealEstate> selectAreaPriceList(@Param ("area") int area, @Param ("price") int price);
}
