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

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/purchase/")
public class PurchaseController {
	@Autowired
	PurchaseServiceImpl service;

	@RequestMapping(value = "ticketingForm")
	public String ticketingForm(Model model, @ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession)
			throws Exception {
		System.out.println("아이디값은 " + httpSession.getAttribute("sessId"));
		List<Purchase> list = service.selectMovie(vo);
		model.addAttribute("list", list);
		return "infra/purchase/user/ticketingForm";
	}

	@ResponseBody
	@RequestMapping(value = "selectTheater")
	public Map<String, Object> selectTheater(Purchase dto, @ModelAttribute("vo") PurchaseVo vo, Model model)
			throws Exception {

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
	public Map<String, Object> selectDate(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession)
			throws Exception {

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
	public Map<String, Object> selectTime(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession)
			throws Exception {

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
	public Map<String, Object> selectSeat(@ModelAttribute("vo") PurchaseVo vo, HttpSession httpSession)
			throws Exception {

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
	public Map<String, Object> selectPurchase(Purchase dto, @ModelAttribute("vo") PurchaseVo vo,
			HttpSession httpSession) throws Exception {

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
	public String kakaopay(Purchase dto, @RequestParam("name") String name, @RequestParam("price") String price,
			@RequestParam("row") String row, @RequestParam("col") String col, @RequestParam("date") String date,
			@RequestParam("time") String time, @RequestParam("id") String id) throws Exception {
		try {
			System.out.println("영화 제목은 = " + name);
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 99a9ce2310007031e1a3de4d7c2f875f");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			conn.setDoInput(true);
			Map<String, String> params = new HashMap<String, String>();
			params.put("cid", "TC0ONETIME");
			params.put("partner_order_id", "CGV");
			params.put("partner_user_id", id);
			params.put("item_name", name);
			params.put("quantity", "1");
			params.put("total_amount", price);
			params.put("tax_free_amount", "0");
			params.put("approval_url", "http://localhost:8080/purchase/approve");
//			params.put("approval_url", "http://localhost:8080/purchase/kakaopayApprove");
			params.put("cancel_url", "http://localhost:8080/purchase/selectPayment");
			params.put("fail_url", "http://localhost:8080/purchase/selectPayment");

			String string_params = new String();
			for (Map.Entry<String, String> elem : params.entrySet()) {
				string_params += (elem.getKey() + "=" + elem.getValue() + "&");
			}
			/* String successUrl = (String)obj.get("next_redirect_pc_url"); */
			OutputStream give = conn.getOutputStream();
			DataOutputStream datagiven = new DataOutputStream(give);
			/* conn.getOutputStream().write(string_params.getBytes()); */
			datagiven.write(string_params.getBytes());
			datagiven.close();

			int result = conn.getResponseCode();

			InputStream receiver;
			if (result == 200) {
				receiver = conn.getInputStream();
			} else {
				receiver = conn.getErrorStream();
			}
			/*
			 * BufferedReader in = new BufferedReader(new
			 * InputStreamReader(conn.getInputStream())); JSONParser parser = new
			 * JSONParser(); JSONObject obj = (JSONObject)parser.parse(in);
			 */
			InputStreamReader reader = new InputStreamReader(receiver);
			BufferedReader changer = new BufferedReader(reader);
			return changer.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "infra/purchase/user/afterTicketingView";
	}

	@RequestMapping(value = "purchaseInst")
	public String purchaseInst(Purchase dto, @ModelAttribute("vo") PurchaseVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.purchase(dto);
		redirectAttributes.addFlashAttribute("dto", dto);
		vo.setmSeq(dto.getmSeq());
		
		return "redirect:/purchase/afterTicketingView";
	}

	@RequestMapping(value = "afterTicketingView")
	public String afterTicketingView(Purchase dto) throws Exception {
		System.out.println(dto.getmNameKor());
		return "infra/purchase/user/afterTicketingView";
	}
	
	 @RequestMapping(value = "approve")
	 public String approve(Purchase dto) throws Exception {
			return "infra/purchase/user/approve";
		}

	 @RequestMapping(value = "kakaopayApprove") 
	 public String kakaopayApprove(@RequestParam("date") String date, @RequestParam("time") String time, @RequestParam("id") String id, @RequestParam("price") String price, @RequestParam("name") String name, @RequestParam("token") String token) throws Exception{
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 99a9ce2310007031e1a3de4d7c2f875f");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			conn.setDoInput(true);
			Map<String, String> params = new HashMap<String, String>();
			params.put("cid", "TC0ONETIME");
			params.put("partner_order_id", "CGV");
			params.put("partner_user_id", id);
			params.put("total_amount", price);
			params.put("tax_free_amount", "0");
			params.put("pg_token", token);
			String string_params = new String();
			for (Map.Entry<String, String> elem : params.entrySet()) {
				string_params += (elem.getKey() + "=" + elem.getValue() + "&");
			}
			/* String successUrl = (String)obj.get("next_redirect_pc_url"); */
			OutputStream give = conn.getOutputStream();
			DataOutputStream datagiven = new DataOutputStream(give);
			/* conn.getOutputStream().write(string_params.getBytes()); */
			datagiven.write(string_params.getBytes());
			datagiven.close();

			int result = conn.getResponseCode();

			InputStream receiver;
			if (result == 200) {
				receiver = conn.getInputStream();
			} else {
				receiver = conn.getErrorStream();
			}
			/*
			 * BufferedReader in = new BufferedReader(new
			 * InputStreamReader(conn.getInputStream())); JSONParser parser = new
			 * JSONParser(); JSONObject obj = (JSONObject)parser.parse(in);
			 */
			InputStreamReader reader = new InputStreamReader(receiver);
			BufferedReader changer = new BufferedReader(reader);
			return changer.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "infra/purchase/user/approve"; 
	 } 
	 
}
