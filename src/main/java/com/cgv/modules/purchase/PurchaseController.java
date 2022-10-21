package com.cgv.modules.purchase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/purchase/")
public class PurchaseController {
	@Autowired
	PurchaseServiceImpl service;
	
	@RequestMapping(value = "ticketingForm")
	public String ticketingForm(Model model, @ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		System.out.println("아이디값은 " + httpSession.getAttribute("sessId"));
		List<Purchase> list = service.selectMovie(vo);
		model.addAttribute("list", list);
		return "infra/purchase/user/ticketingForm";
	}
	@ResponseBody
	@RequestMapping(value = "selectTheater")
	public Map<String, Object> selectTheater(Purchase dto, @ModelAttribute("vo") PurchaseVo vo, Model model) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectTheater(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectLocation")
	public Map<String, Object> selectLocation(@ModelAttribute("vo") PurchaseVo vo) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectLocation(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectDate")
	public Map<String, Object> selectDate(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectDate(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectTime")
	public Map<String, Object> selectTime(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result2 = service.selectScreen(vo);
		List<Purchase> result = service.selectTime(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("result2", result2);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectSeat")
	public Map<String, Object> selectSeat(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectSeat(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectPurchase")
	public Map<String, Object> selectPurchase(Purchase dto, @ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectPurchase(vo);
		
		System.out.println("값은" + result);
	
		if (result != null) {
			returnMap.put("result", result);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@RequestMapping(value = "selectPayment")
	public String selectPayment(@ModelAttribute("dto") Purchase dto, HttpSession httpSession) throws Exception {
		System.out.println(dto.getmNameKor());
		System.out.println("아이디값은 " + httpSession.getAttribute("sessId"));
		return "infra/purchase/user/paymentForm";
	}
	
	@RequestMapping(value = "purchaseInst")
	public String purchaseInst(Purchase dto) throws Exception {
		service.purchase(dto);
		return "redirect:/purchase/afterTicketingView";
	}
	@RequestMapping(value = "afterTicketingView")
	public String afterTicketingView(Purchase dto) throws Exception {
		System.out.println(dto.getmNameKor()); 
		return "infra/purchase/user/afterTicketingView";
	}
	
	

}
