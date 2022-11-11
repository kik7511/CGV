package com.cgv.modules.purchase;

import java.util.List;

public interface PurchaseService {
	public List<Purchase> selectMovie(PurchaseVo vo) throws Exception;
	public List<Purchase> selectTheater(PurchaseVo vo) throws Exception;
	public List<Purchase> selectLocation(PurchaseVo vo) throws Exception;
	public List<Purchase> selectDate(PurchaseVo vo) throws Exception;
	public List<Purchase> selectTime(PurchaseVo vo) throws Exception;
	public List<Purchase> selectScreen(PurchaseVo vo) throws Exception;
	public List<Purchase> selectSeat(PurchaseVo vo) throws Exception;
	public List<Purchase> selectPurchase(PurchaseVo vo) throws Exception;
	public int selectpurchaseUp(Purchase dto) throws Exception;
	public int purchase(Purchase dto) throws Exception;
	public int update(Purchase dto) throws Exception;
}
