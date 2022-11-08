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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	public static String datetime = "";
	public static String item = "";
	public static String won = "";
	public static String tid2 = "";
	public static Integer stRow;
	public static Integer stCol;
	public static Integer src;
	public static String ifMmName = "";
	public static String thName = "";
	public static String dDate = "";
	public static String dTime = "";
	public static Integer scNumber;
	public static String scSceenType = "";
	public static String ifMmId = "";
	public static String token = "";

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

	@ResponseBody
	@RequestMapping(value = "kakaopay")
	public String kakaopay(@ModelAttribute("dto") Purchase dto, Model model, @RequestParam("name") String name, @RequestParam("price") String price, @RequestParam("row") String row, @RequestParam("col") String col, @RequestParam("location") String location, @RequestParam("date") String date, @RequestParam("time") String time, @RequestParam("id") String id) throws Exception {
		
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
        params.put("cancel_url", "http://localhost:8080/purchase/selectPayment");
        params.put("fail_url", "http://localhost:8080/purchase/selectPayment");
        
        item = name;
        won = price;
        tid2 = dto.getTid();
        datetime = dto.getCreated_at();
        stRow = dto.getStRow();
        stCol = dto.getStCol();
        src = dto.getSrc();
        ifMmName = dto.getIfMmName();
        thName = dto.getThName();
        dDate = dto.getdDate();
        dTime = dto.getdTime();
        scNumber = dto.getScNumber();
        scSceenType = dto.getScScreenType();
        ifMmId = id;
        
        System.out.println("tid : " + dto.getTid());
        System.out.println("item : " + item);
        System.out.println("stRow : " + stRow);
        System.out.println("stCol" + stCol);
        System.out.println("src : " + src);
        System.out.println("ifMmName : " + ifMmName);
        System.out.println("thName : " + thName);
        System.out.println("dDate : " + dDate);
        System.out.println("dTime : " + dTime);
        
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
		BufferedReader changer;
		if (result == 200) {
			changer = new BufferedReader((new InputStreamReader(conn.getInputStream())));
		} else {
			changer = new BufferedReader((new InputStreamReader(conn.getErrorStream())));
		}
		/*
		 * BufferedReader in = new BufferedReader(new
		 * InputStreamReader(conn.getInputStream())); JSONParser parser = new
		 * JSONParser(); JSONObject obj = (JSONObject)parser.parse(in);
		 */
		/*
		 * StringBuilder stringBuilder = new StringBuilder(); String line; while ((line
		 * = changer.readLine()) != null) { System.out.println("line: " + line);
		 * stringBuilder.append(line); }
		 */
		
		/*
		 * changer.close(); conn.disconnect();
		 */
		/*
		 * StringBuilder stringBuilder = new StringBuilder(); String line; while ((line
		 * = changer.readLine()) != null) { System.out.println("line: " + line);
		 * stringBuilder.append(line); }
		 */
		
		/*
		 * changer.close(); conn.disconnect();
		 */

		
//		json object + array string -> java map
		
		/*
		 * System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		 * ObjectMapper objectMapper = new ObjectMapper(); Map<String, Object> map =
		 * objectMapper.readValue(stringBuilder.toString(), Map.class);
		 * 
		 * System.out.println("######## Map"); for (String key : map.keySet()) { String
		 * value = String.valueOf(map.get(key)); // ok System.out.println("[key]:" + key
		 * + ", [value]:" + value); } String aaa = (String)
		 * map.get("next_redirect_pc_url"); System.out.println("결과는: " + aaa);
		 * model.addAttribute(map);
		 */
		
		
		/*
		 * StringBuilder stringBuilder = new StringBuilder(); String line; while ((line
		 * = changer.readLine()) != null) { System.out.println("line: " + line);
		 * stringBuilder.append(line); } System.out.println("stringBuilder.toString(): "
		 * + stringBuilder.toString());
		 */
		/*
		 * URL url2 = new URL(aaa); HttpURLConnection conn2 = (HttpURLConnection)
		 * url2.openConnection();
		 */
		
		return changer.readLine();
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
	 public String approve(@ModelAttribute("dto") Purchase dto, Model model, HttpServletRequest request) throws Exception {
		 	
		    String a = request.getRequestURL().toString() + "?" + request.getQueryString();
		    System.out.println(a);
		 	System.out.println("상품은12 " + tid2);
		 	System.out.println("상품은 " + item);
		 	System.out.println("상품은 " + won);
		 	
		 	model.addAttribute("tokenUrl", a);
		 	model.addAttribute("tid", tid2);
		 	model.addAttribute("item", item);
		 	model.addAttribute("won", won);
		 	model.addAttribute("datetime", datetime);
		 	model.addAttribute("stRow", stRow);
		 	model.addAttribute("stCol", stCol);
		 	model.addAttribute("src", src);
		 	model.addAttribute("ifMmName", ifMmName);
		 	model.addAttribute("thName", thName);
		 	model.addAttribute("dDate", dDate);
		 	model.addAttribute("dTime", dTime);
		 	model.addAttribute("scNumber", scNumber);
		 	model.addAttribute("scSceenType", scSceenType);
		 	model.addAttribute("ifMmId", ifMmId);
		 	
			return "infra/purchase/user/approve";
		}

	 @RequestMapping(value = "kakaopayApprove") 
	 public String kakaopayApprove(@RequestParam("id") String id, @RequestParam("price") String price, @RequestParam("name") String name, @RequestParam("token") String token, Purchase dto) throws Exception{
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 99a9ce2310007031e1a3de4d7c2f875f");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			conn.setDoInput(true);
			Map<String, String> params = new HashMap<String, String>();
			token = dto.getPg_token();
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
			
			service.purchase(dto);
			
			return changer.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "infra/purchase/user/approve"; 
	 } 
	 
}
