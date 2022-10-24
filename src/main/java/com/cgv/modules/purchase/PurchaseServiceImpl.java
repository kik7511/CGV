package com.cgv.modules.purchase;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Service
public class PurchaseServiceImpl implements PurchaseService {
	
	@Autowired
	PurchaseDao dao;
	
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
}	

    

    
    
    
