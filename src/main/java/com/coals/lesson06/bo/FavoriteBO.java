package com.coals.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson06.dao.FavoriteDAO;
import com.coals.lesson06.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public void insertFavorite(String name, String url) {
		favoriteDAO.insertFavorite(name, url);
	}
	
	public List<Favorite> selectFavorite() {
		return favoriteDAO.selectFavorite();
	}
	
}
