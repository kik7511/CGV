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
	public String ticketingForm(Model model, @ModelAttribute("vo") PurchaseVo vo) throws Exception {
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
	public Map<String, Object> selectLocation(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("vo.getmSeq(): " + vo.getmSeq());
		
		List<Purchase> result = service.selectLocation(vo);
		System.out.println("값은" + result);
	
		if (result != null) {
			/*
			 * httpSession.setAttribute("sessThLocation", ((Purchase)
			 * result).getThLocation());
			 */
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
			/* httpSession.setAttribute("sessThName", ((Purchase) result).getThName()); */
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
			/* httpSession.setAttribute("sessdDate", ((Purchase) result).getdDate()); */
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
			/*
			 * httpSession.setAttribute("sessdTime", ((Purchase) result).getdTime());
			 * httpSession.setAttribute("sessScScreenType", ((Purchase)
			 * result).getScScreenType()); httpSession.setAttribute("sessScNumber",
			 * ((Purchase) result).getScNumber());
			 */
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
		
		/* int result2 = service.selectpurchaseUp(dto); 
		System.out.println("controller result2: " + result2);*/
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
	public String selectPayment(@ModelAttribute("dto") Purchase dto) {
		
		
		return "infra/purchase/user/paymentForm";
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
