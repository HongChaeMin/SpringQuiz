package com.coals.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coals.lesson02.bo.StoreBO;
import com.coals.lesson02.model.Store;
import com.coals.lesson05.bo.NewReviewBO;
import com.coals.lesson05.model.NewReview;

@Controller
public class StoreController {

	@Autowired
	private StoreBO storeBO;
	
	@Autowired
	private NewReviewBO newReviewBO;
	
	@RequestMapping("/lesson05/quiz06")
	public String store(Model model) {
		List<Store> stores = storeBO.getStoreList();
		
		model.addAttribute("stores", stores);
		
		return "lesson05/store/storeMain";
	}
	
	@GetMapping("/lesson05/quiz06/reviews")
	public String store(
			Model model
			, @RequestParam("storeId") int id
			, @RequestParam("storeName") String name
			) {
		List<NewReview> list = newReviewBO.selectNewReviewList(id);
		
		model.addAttribute("reviews", list);
		model.addAttribute("storeName", name);
		
		return "lesson05/store/storeReview";
	}
	
}
