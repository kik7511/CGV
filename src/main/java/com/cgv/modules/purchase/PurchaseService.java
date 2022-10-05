package com.cgv.modules.purchase;

import java.util.List;

public interface PurchaseService {
	public List<Purchase> selectMovie(PurchaseVo vo) throws Exception;
	public List<Purchase> selectTheater(PurchaseVo vo) throws Exception;
}
