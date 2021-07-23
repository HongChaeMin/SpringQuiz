package com.coals.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.coals.lesson04.model.Realtor;

@Repository
public interface RealtorDAO {
	
	public void insertRealtor(Realtor realtor);

}
