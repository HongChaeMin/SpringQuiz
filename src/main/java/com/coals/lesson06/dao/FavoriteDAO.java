package com.coals.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coals.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {

	public void insertFavorite(
			@Param("name") String name
			, @Param("url") String url
			);

	public List<Favorite> selectFavorite();

	public Boolean existFavoriteByUrl(String url);

	public void deleteFavorite(int id);
	
}
