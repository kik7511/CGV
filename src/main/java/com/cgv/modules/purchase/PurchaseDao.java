package com.cgv.modules.purchase;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PurchaseDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.purchase.PurchaseMapper";
	
	public List<Purchase> selectList(){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectMovie");
		return list;
	}
	
	public List<Purchase> selectTheater(PurchaseVo vo){
		List<Purchase> list = sqlSession.selectList(namespace + ".selectTheater", vo);
		return list;
	}
}