package com.coals.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coals.lesson05.dao.NewReviewDAO;
import com.coals.lesson05.model.NewReview;

@Service
public class NewReviewBO {

	@Autowired
	private NewReviewDAO newReviewDAO;
	
	public List<NewReview> selectNewReviewList(int id) {
		return newReviewDAO.selectNewReviewList(id);
	}

	
	
}
