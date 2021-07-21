package com.coals.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coals.lesson04.bo.SellerBO;
import com.coals.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class SellerController {

	@Autowired
	private SellerBO sellerBO;
	
	@GetMapping("/1")
	public String addseller() {
		return "lesson04/addSeller";
	}
	
	@PostMapping("/add_seller")
	public String quiz01_1(
			@RequestParam("nickname") String nickname
			, @RequestParam(value = "profileImageUrl", required = false) String profileImageUrl
			, @RequestParam("temperature") double temperature
			) {
		
		sellerBO.insertSeller(nickname, profileImageUrl, temperature);
		
		return "lesson04/afterAddSeller";
	}
	
	@RequestMapping("/seller_info")
	public String quiz01_2(
			Model model
			, @RequestParam(value = "id", required = false) Integer id
			) {
		Seller seller = new Seller();
		if (id == null) { 
			seller = sellerBO.selectLastSeller();
		} else { 
			seller = sellerBO.selectSeller(id);
		}
		model.addAttribute("result", seller);
		model.addAttribute("subject", "판매자 정보");
		
		return "lesson04/sellerInfo";
	}
	
}
