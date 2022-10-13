package com.cgv.modules.purchase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}	
