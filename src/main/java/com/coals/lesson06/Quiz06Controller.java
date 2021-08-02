package com.coals.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coals.lesson06.bo.FavoriteBO;

@Controller
public class Quiz06Controller {

	@Autowired
	private FavoriteBO favoriteBO;
	
	@RequestMapping("/lesson06/favoriteAdd")
	public String favoriteAdd() {
		return "lesson06/favoriteAdd";
	}
	
	@PostMapping("/lesson06/favoriteAddData")
	@ResponseBody
	public String favoriteAddData(
			Model model
			, @RequestParam("name") String name
			, @RequestParam("url") String url
			) {
		favoriteBO.insertFavorite(name, url);
		
		return "success";
	}
	
	@RequestMapping("/lesson06/favoriteAddAfter")
	public String favoriteAddAfter(Model model) {
		model.addAttribute("favorite", favoriteBO.selectFavorite());
		
		return "lesson06/favoriteAddAfterView";
	}
	
}
