package com.cgv.modules.purchase;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cgv.modules.member.Member;

@Repository
public class PurchaseDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.purchase.PurchaseMapper";
	
	public List<Purchase> selectList(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectMovie", vo);
		return list;
	}
	
	public List<Purchase> selectTheater(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectTheater", vo);
		return list;
	}
	
	public List<Purchase> selectLocation(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectLocation", vo);
		return list;
	}
	
	public List<Purchase> selectDate(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectDate", vo);
		return list;
	}
	
	public List<Purchase> selectTime(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectTime", vo);
		return list;
	}
	
	public List<Purchase> selectScreen(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectScreen", vo);
		return list;
	}
	
	public List<Purchase> selectSeat(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectSeat", vo);
		return list;
	}
	
	public List<Purchase> selectPurchase(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectPurchase", vo);
		return list;
	}
	
	public int selectpurchaseUp(Purchase dto) {
		int result = sqlSession.update(namespace+ ".selecturchaseUp", dto);
		return result;
	}
	
	public int purchase(Purchase dto) {
		int result = sqlSession.insert(namespace+ ".purchase", dto);
		return result;
	}
}
