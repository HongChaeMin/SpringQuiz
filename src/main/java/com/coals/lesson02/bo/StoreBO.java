package com.coals.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson02.dao.StoreDAO;
import com.coals.lesson02.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreDAO storeDAO6;
	
	public List<Store> getStoreList() {
		return storeDAO6.selectStoreList();
	}
	
}
