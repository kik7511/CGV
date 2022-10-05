package com.cgv.modules.purchase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

		List<Purchase> result = service.selectTheater(dto);
		model.addAttribute("list", result);
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
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("setDirectoryList_ajax.do") public void
	 * getDirlist_ajax(PurchaseVo vo, HttpServletRequest req, HttpServletResponse
	 * res, HttpSession session) throws Exception { int level =
	 * Integer.parseInt(vo.getSelectVal()); JSONObject json = new JSONObject(); int
	 * resultNum = 0;
	 * 
	 * if(level < 5 || (vo.getSelectVal().equals("09") && level < 7)) { //db에서 해당 값을
	 * 가져와 json형식으로 만들어주는 코드가 필요. List<SelectVo> resultDirList =
	 * setDirList(resultCnt, resultList); long resultCnt = resultDirList.size();
	 * 
	 * resultNum = 1;
	 * 
	 * json.put("resultCnt", resultCnt); json.put("resultJList", resultList); }
	 * json.put("result", resultNum);
	 * res.setContentType("application/json; charset=utf-8");
	 * res.getWriter().write(json.toString()); }
	 */
	

}
