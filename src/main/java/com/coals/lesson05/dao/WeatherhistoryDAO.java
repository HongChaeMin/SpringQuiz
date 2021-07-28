package com.coals.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.coals.lesson05.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {

	public List<Weatherhistory> selectWeatherHistory();

	public void insertweatherhistory(Weatherhistory weatherhistroy);
	
}
