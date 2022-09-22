package com.cgv.modules.purchase;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/purchase/")
public class PurchaseController {
	
	@RequestMapping(value = "ticketingForm")
	public String ticketingForm() {
		return "infra/purchase/user/ticketingForm";
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
