package com.cgv.modules.purchase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PurchaseServiceImpl implements PurchaseService {
	
	@Autowired
	PurchaseDao dao;
	
	@Override
	public List<Purchase> selectMovie() throws Exception{
		List<Purchase> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Purchase> selectTheater(PurchaseVo vo) throws Exception{
		return dao.selectTheater(vo);
	} 

}