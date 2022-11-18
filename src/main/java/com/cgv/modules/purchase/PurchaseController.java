package com.cgv.modules.purchase;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
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
	
	public static String item = "";
	public static String won = "";
	public static Integer stRow;
	public static Integer stCol;
	public static Integer src;
	public static String ifMmName = "";
	public static String thName = "";
	public static String dDate = "";
	public static String dTime = "";
	public static Integer scNumber;
	public static Integer scScreenType;
	public static String ifMmId = "";
	public static String token = "";
	public static String tid2 = "";
	public static String datetime = "";
	public static String mAgeLimit = "";

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
		System.out.println("스크린 타입은 " + dto.getScScreenType());
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
		// OutputStream으로 POST 데이터를 넘겨주겠다는 옵션.
		conn.setDoInput(true);
		// InputStream으로 서버로 부터 응답을 받겠다는 옵션.
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
        
        String string_params = new String();
		for (Map.Entry<String, String> elem : params.entrySet()) {
			string_params += (elem.getKey() + "=" + elem.getValue() + "&");
		}
		OutputStream give = conn.getOutputStream();
		// Request Body에 Data를 담기위해 OutputStream 객체를 생성.
		
		DataOutputStream datagiven = new DataOutputStream(give);
		//데이터의 정보를 출력하는 객체
		
		datagiven.write(string_params.getBytes());
		// Request Body에 Data 셋팅.
		
		datagiven.close(); 
		// OutputStream 종료.

		int result = conn.getResponseCode();
		// 실제 서버로 Request 요청 하는 부분. (응답 코드를 받는다. 200 성공, 나머지 에러)
		BufferedReader changer;
		if (result == 200) {
			changer = new BufferedReader((new InputStreamReader(conn.getInputStream())));
			//결과 받아서 저장
		} else {
			changer = new BufferedReader((new InputStreamReader(conn.getErrorStream())));
		}
		
		return changer.readLine();
		//결과를 한 줄로 나타냄 - url에 파라미터 저장한 것 나오게 함 
	}

	@RequestMapping(value = "purchaseInst")
	public String purchaseInst(@ModelAttribute("dto")Purchase dto, RedirectAttributes redirectAttributes) throws Exception {
		service.purchase(dto);
		service.update(dto);
		redirectAttributes.addFlashAttribute("dto", dto);
		
		return "redirect:/purchase/afterTicketingView";
	}

	@RequestMapping(value = "afterTicketingView")
	public String afterTicketingView(@ModelAttribute("dto")Purchase dto) throws Exception {
		System.out.println(dto.getmNameKor());
		System.out.println(dto.getAid());
		return "infra/purchase/user/afterTicketingView";
	}
	
	 @RequestMapping(value = "approve")
	 public String approve(@ModelAttribute("dto") Purchase dto, Model model, HttpServletRequest request, HttpSession httpSession) throws Exception {
		    String a = request.getRequestURL().toString() + "?" + request.getQueryString();
		    System.out.println("리미트는 " + dto.getTid());
		    System.out.println(a);
			System.out.println("상품은12 " + tid2); 
		 	System.out.println("상품은 " + item);
		 	System.out.println("상품은 " + won);
		 	model.addAttribute("tokenUrl", a);
			/* model.addAttribute("tid", tid2); */
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
		 	model.addAttribute("scScreenType", scScreenType);
		 	model.addAttribute("ifMmId", ifMmId);
		 	model.addAttribute("mAgeLimit", mAgeLimit);
		 	
			return "infra/purchase/user/approve";
		}

	 @ResponseBody
	 @RequestMapping(value = "kakaopayApprove") 
	 public String kakaopayApprove(@RequestParam("id") String id, @RequestParam("price") String price, @RequestParam("name") String name, @RequestParam("pg_token") String pg_token, @RequestParam("tid") String tid, Purchase dto) throws Exception{
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
        params.put("tid", tid);
        params.put("pg_token", pg_token);
        
        String string_params = new String();
		for (Map.Entry<String, String> elem : params.entrySet()) {
			string_params += (elem.getKey() + "=" + elem.getValue() + "&");
		}
		OutputStream give = conn.getOutputStream();
		DataOutputStream datagiven = new DataOutputStream(give);
		datagiven.write(string_params.getBytes());
		datagiven.close(); 
		

		int result = conn.getResponseCode();
		BufferedReader changer;
		if (result == 200) {
			changer = new BufferedReader((new InputStreamReader(conn.getInputStream())));
		} else {
			changer = new BufferedReader((new InputStreamReader(conn.getErrorStream())));
		}
		
		return changer.readLine();
	}
	 
	@RequestMapping(value = "test")
	@ResponseBody
	public String test(Purchase dto, @RequestParam("name") String name, @RequestParam("price") String price, @RequestParam("id") String id, RedirectAttributes rttr) {
		item = name;
        won = price;
        tid2 = dto.getTid();
        rttr.addFlashAttribute("tid", tid2);
        datetime = dto.getCreated_at();
        stRow = dto.getStRow();
        stCol = dto.getStCol();
        src = dto.getSrc();
        ifMmName = dto.getIfMmName();
        thName = dto.getThName();
        dDate = dto.getdDate();
        dTime = dto.getdTime();
        scNumber = dto.getScNumber();
        scScreenType = dto.getScScreenType();
        ifMmId = id;
        mAgeLimit = dto.getmAgeLimit();
        
        System.out.println("tid : " + dto.getTid());
        System.out.println("item : " + item);
        System.out.println("stRow : " + stRow);
        System.out.println("stCol" + stCol);
        System.out.println("src : " + src);
        System.out.println("ifMmName : " + ifMmName);
        System.out.println("thName : " + thName);
        System.out.println("dDate : " + dDate);
        System.out.println("dTime : " + dTime);
        System.out.println("scScreenType : " + scScreenType);
        System.out.println("mAgeLimit : " + mAgeLimit);
		
		return "redirect:/purchase/approve";

	}
	 
}
