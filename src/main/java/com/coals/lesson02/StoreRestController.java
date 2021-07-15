package com.coals.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.coals.lesson02.bo.StoreBO;

@RestController
public class StoreRestController {

	@Autowired
	private StoreBO storeBO;
	
	@RequestMapping("/lesson02/quiz01")
	public List<com.coals.lesson02.model.Store> printStore() {
		List<com.coals.lesson02.model.Store> list = storeBO.getStoreList();
		return list;
	}
	
}
