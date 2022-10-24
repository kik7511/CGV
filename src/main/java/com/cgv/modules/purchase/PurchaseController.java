package com.cgv.modules.purchase;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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
	
	@RequestMapping(value = "kakaopay")
	@ResponseBody
	public String kakaopay() throws Exception {
		try {
		URL 주소 = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection 서버연결 = (HttpURLConnection) 주소.openConnection();
		서버연결.setRequestMethod("POST");
		서버연결.setRequestProperty("Authorization", "KakaoAK 99a9ce2310007031e1a3de4d7c2f875f");
		서버연결.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		서버연결.setDoOutput(true);
		String 파라미터 = "cid=TC0ONETIME&partner_order_id=partner_order_id\"&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://localhost:8080&fail_url=https://localhost:8080&cancel_url=https://localhost:8080";
		OutputStream 주는애 = 서버연결.getOutputStream();
		DataOutputStream 데이타주는애 = new DataOutputStream(주는애);
		데이타주는애.writeBytes(파라미터);
		데이타주는애.close();
		
		int 결과 = 서버연결.getResponseCode();
		
		InputStream 받는애;
		if(결과 == 200) {
			받는애 = 서버연결.getInputStream();
		}else {
			받는애 = 서버연결.getErrorStream();
		}
		InputStreamReader 읽는애 = new InputStreamReader(받는애);
		BufferedReader 형변환하는애 = new BufferedReader(읽는애);
		return 형변환하는애.readLine();
		} catch(MalformedURLException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}
		return "infra/purchase/user/afterTicketingView";
	}
	
	/*
	 * @RequestMapping(value = "purchaseInst") public String purchaseInst(Purchase
	 * dto) throws Exception { service.purchase(dto); return
	 * "redirect:/purchase/afterTicketingView"; }
	 */
	/*
	 * @RequestMapping(value = "afterTicketingView") public String
	 * afterTicketingView(Purchase dto) throws Exception {
	 * System.out.println(dto.getmNameKor()); return
	 * "infra/purchase/user/afterTicketingView"; }
	 */
	
}
