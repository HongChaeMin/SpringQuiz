package com.coals.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson04.dao.SellerDAO;
import com.coals.lesson04.model.Seller;

@Service
public class SellerBO {

	@Autowired
	private SellerDAO sellerDAO;
	
	public void insertSeller(String nickname, String profileImageUrl, double temperature) {
		sellerDAO.insertSeller(nickname, profileImageUrl, temperature);
	}
	
	public Seller selectLastSeller() {
		return sellerDAO.selectLastSeller();
	}

	public Seller selectSeller(Integer id) {
		return sellerDAO.selectSeller(id);
	}
	
}
