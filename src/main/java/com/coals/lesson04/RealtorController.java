package com.coals.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coals.lesson04.bo.RealtorBO;
import com.coals.lesson04.model.Realtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class RealtorController {

	@Autowired
	private RealtorBO realtorBO;

	@RequestMapping("/1")
	public String addRealtorView() {
		return "lesson04/addRealtor";
	}

	@PostMapping("/add_realtor")
	public String addRealtor(
			Model model
			, @RequestParam("office") String office
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("address") String address
			, @RequestParam("grade") String grade
			) {
		Realtor realtor = new Realtor();
		realtor.setOffice(office);
		realtor.setPhoneNumber(phoneNumber);
		realtor.setAddress(address);
		realtor.setGrade(grade);
		
		realtorBO.insertRealtor(realtor);
		
		realtor = realtorBO.selectRealtor(realtor.getId());
		
		model.addAttribute("result", realtor);
		model.addAttribute("subject", "공인중개사 정보");
		
		return "lesson04/realtorInfo";
	}

}
