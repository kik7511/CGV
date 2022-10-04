package com.cgv.modules.purchase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cgv.modules.member.Member;

@Controller
@RequestMapping(value = "/purchase/")
public class PurchaseController {
	@Autowired
	PurchaseServiceImpl service;
	
	@RequestMapping(value = "ticketingForm")
	public String ticketingForm(Model model) throws Exception {
		List<Purchase> list = service.selectMovie();
		model.addAttribute("list", list);
		return "infra/purchase/user/ticketingForm";
	}
	@ResponseBody
	@RequestMapping(value = "selectTheater")
	public Map<String, Object> selectTheater(@ModelAttribute("vo") PurchaseVo vo) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();

		List<Purchase> result = service.selectTheater(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	@RequestMapping(value = "paymentForm")
	public String paymentForm() {
		return "infra/purchase/user/paymentForm";
	}
	
	@RequestMapping(value = "afterTicketingView")
	public String afterTicketingView() {
		return "infra/purchase/user/afterTicketingView";
	}
	
	

}
