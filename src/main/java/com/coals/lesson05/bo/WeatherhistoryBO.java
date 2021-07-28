package com.coals.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson05.dao.WeatherhistoryDAO;
import com.coals.lesson05.model.Weatherhistory;

@Service
public class WeatherhistoryBO {

	@Autowired
	private WeatherhistoryDAO weatherhistoryDAO;
	
	public List<Weatherhistory> selectWeatherhistory() {
		return weatherhistoryDAO.selectWeatherHistory();
	}

	public void insertWeatherhistory(Weatherhistory weatherhistroy) {
		weatherhistoryDAO.insertweatherhistory(weatherhistroy);		
	}
	
}
