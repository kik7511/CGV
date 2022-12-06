package com.cgv.modules.purchase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class PurchaseServiceImpl implements PurchaseService {
	
	@Autowired
	PurchaseDao dao;
	private String user_id;
	
	@Override
	public List<Purchase> selectMovie(PurchaseVo vo) throws Exception{
		List<Purchase> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public List<Purchase> selectTheater(PurchaseVo vo) throws Exception{
		return dao.selectTheater(vo);
	} 

	@Override
	public List<Purchase> selectLocation(PurchaseVo vo) throws Exception{
		return dao.selectLocation(vo);
	} 
	
	@Override
	public List<Purchase> selectDate(PurchaseVo vo) throws Exception{
		return dao.selectDate(vo);
	}
	
	@Override
	public List<Purchase> selectTime(PurchaseVo vo) throws Exception{
		return dao.selectTime(vo);
	}
	
	@Override
	public List<Purchase> selectScreen(PurchaseVo vo) throws Exception{
		return dao.selectScreen(vo);
	} 
	
	@Override
	public List<Purchase> selectSeat(PurchaseVo vo) throws Exception{
		return dao.selectSeat(vo);
	}
	
	@Override
	public List<Purchase> selectPurchase(PurchaseVo vo) throws Exception{
		return dao.selectPurchase(vo);
	}
	
	@Override
	public int selectpurchaseUp(Purchase dto) throws Exception{
		return dao.selectpurchaseUp(dto);
	}
	
	@Override
	public int purchase(Purchase dto) throws Exception{
		return dao.purchase(dto);
	}
	
	@Override
	public int update(Purchase dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int dateUpdate(Purchase dto) throws Exception{
		return dao.dateUpdate(dto);
	}
	
	//카카오페이
	
		// header() 셋팅
		private HttpHeaders getHeaders() throws Exception {
			
			HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization", "KakaoAK 99a9ce2310007031e1a3de4d7c2f875f");
			headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			
			return headers;
		}
		
		//결제준비
		public Purchase payReady(Purchase dto) throws Exception {
			user_id = dto.getIfMmId();
			MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
			System.out.println("ready 아이디는 : " + dto.getIfMmId());
			params.add("cid", "TC0ONETIME");
			params.add("partner_order_id", "CGV");
			params.add("partner_user_id", dto.getIfMmId());
			params.add("item_name",	dto.getmNameKor());
			params.add("quantity", "1");
			params.add("total_amount", dto.getStPrice());
			params.add("tax_free_amount", "0");
			params.add("approval_url", "http://localhost:8080/purchase/kakaopayApproval");
			params.add("cancel_url", "http://localhost:8080/purchase/kakaopayCancel");
			params.add("fail_url", "http://localhost:8080/purchase/kakaopayFail");
			
			HttpEntity<MultiValueMap<String, String>> body  = new HttpEntity<MultiValueMap<String, String>>(params, this.getHeaders());
			// 외부url요청 통로 열기.
			RestTemplate template = new RestTemplate();
			String url = "https://kapi.kakao.com/v1/payment/ready";
	        // template으로 값을 보내고 받아온 ReadyResponse값 readyResponse에 저장.
			Purchase Purchase = template.postForObject(url, body, Purchase.class);
			return Purchase;
		}
		
		//결제승인
		public Purchase payApprove(String tid, String pgToken, Purchase dto) throws Exception  {
			// request값 담기.
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			System.out.println("approve 아이디는 : " + user_id);
			System.out.println("tid 값은 : " + tid);
			params.add("cid", "TC0ONETIME");
			params.add("tid", tid);
			params.add("partner_order_id", "CGV"); // 주문명
			params.add("partner_user_id", user_id);
			params.add("pg_token", pgToken);
			
	        // 하나의 map안에 header와 parameter값을 담아줌.
			HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, this.getHeaders());
			
	        // 외부url 통신
			RestTemplate template = new RestTemplate();
			String url = "https://kapi.kakao.com/v1/payment/approve";
	        // 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스. 
			Purchase Purchase = template.postForObject(url, requestEntity, Purchase.class);
			System.out.println("카카오페이 서비스임플");
			System.out.println(Purchase.getAmount());
			System.out.println(Purchase.getPg_token());
			
			return Purchase;

			}

}	

    

    
    
    
