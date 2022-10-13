package com.cgv.modules.purchase;

public class PurchaseVo {
	private String mSeq;
	private Integer thLocation;
	private String thName;
	private String dDate;
	private String dTime;
	private Integer scNumber;
	
	public Integer getScNumber() {
		return scNumber;
	}
	public void setScNumber(Integer scNumber) {
		this.scNumber = scNumber;
	}
	public String getdDate() {
		return dDate;
	}
	public void setdDate(String dDate) {
		this.dDate = dDate;
	}
	public String getdTime() {
		return dTime;
	}
	public void setdTime(String dTime) {
		this.dTime = dTime;
	}
	public String getmSeq() {
		return mSeq;
	}
	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public Integer getThLocation() {
		return thLocation;
	}
	public void setThLocation(Integer thLocation) {
		this.thLocation = thLocation;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
}
