package com.cgv.modules.member;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Member {
	private String ifMmSeq;
	private String ifMmName;
	private Integer ifMmGender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ifMmDob;
	private String ifMmId;
	private String ifMmPassWord;
	private Integer ifMmTel;
	private String ifMmPhone;
	private String ifMmEmail;
	private Integer ifMmEmailAddress;
	private Integer ifMmMarketing;
	private Date ifMmSingupDate;
	private String ifMmAddress;
	private Integer ifMmAddress_homenumber;
	private String ifMmAddress_detail;
	private String ifMmNickname;
	private Integer ifMmMangerNy;
	private Integer ifMmRank;
	
	
	public Integer getIfMmRank() {
		return ifMmRank;
	}
	public void setIfMmRank(Integer ifMmRank) {
		this.ifMmRank = ifMmRank;
	}
	public Integer getIfMmMangerNy() {
		return ifMmMangerNy;
	}
	public void setIfMmMangerNy(Integer ifMmMangerNy) {
		this.ifMmMangerNy = ifMmMangerNy;
	}
	public String getIfMmSeq() {
		return ifMmSeq;
	}
	public void setIfMmSeq(String ifMmSeq) {
		this.ifMmSeq = ifMmSeq;
	}
	public String getIfMmName() {
		return ifMmName;
	}
	public void setIfMmName(String ifMmName) {
		this.ifMmName = ifMmName;
	}
	public Integer getIfMmGender() {
		return ifMmGender;
	}
	public void setIfMmGender(Integer ifMmGender) {
		this.ifMmGender = ifMmGender;
	}
	public Date getIfMmDob() {
		return ifMmDob;
	}
	public void setIfMmDob(Date ifMmDob) {
		this.ifMmDob = ifMmDob;
	}
	public String getIfMmId() {
		return ifMmId;
	}
	public void setIfMmId(String ifMmId) {
		this.ifMmId = ifMmId;
	}
	public String getIfMmPassWord() {
		return ifMmPassWord;
	}
	public void setIfMmPassWord(String ifMmPassWord) {
		this.ifMmPassWord = ifMmPassWord;
	}
	public Integer getIfMmTel() {
		return ifMmTel;
	}
	public void setIfMmTel(Integer ifMmTel) {
		this.ifMmTel = ifMmTel;
	}
	public String getIfMmPhone() {
		return ifMmPhone;
	}
	public void setIfMmPhone(String ifMmPhone) {
		this.ifMmPhone = ifMmPhone;
	}
	public String getIfMmEmail() {
		return ifMmEmail;
	}
	public void setIfMmEmail(String ifMmEmail) {
		this.ifMmEmail = ifMmEmail;
	}
	public Integer getIfMmEmailAddress() {
		return ifMmEmailAddress;
	}
	public void setIfMmEmailAddress(Integer ifMmEmailAddress) {
		this.ifMmEmailAddress = ifMmEmailAddress;
	}
	public Integer getIfMmMarketing() {
		return ifMmMarketing;
	}
	public void setIfMmMarketing(Integer ifMmMarketing) {
		this.ifMmMarketing = ifMmMarketing;
	}
	public Date getIfMmSingupDate() {
		return ifMmSingupDate;
	}
	public void setIfMmSingupDate(Date ifMmSingupDate) {
		this.ifMmSingupDate = ifMmSingupDate;
	}
	public String getIfMmAddress() {
		return ifMmAddress;
	}
	public void setIfMmAddress(String ifMmAddress) {
		this.ifMmAddress = ifMmAddress;
	}
	public Integer getIfMmAddress_homenumber() {
		return ifMmAddress_homenumber;
	}
	public void setIfMmAddress_homenumber(Integer ifMmAddress_homenumber) {
		this.ifMmAddress_homenumber = ifMmAddress_homenumber;
	}
	public String getIfMmAddress_detail() {
		return ifMmAddress_detail;
	}
	public void setIfMmAddress_detail(String ifMmAddress_detail) {
		this.ifMmAddress_detail = ifMmAddress_detail;
	}
	public String getIfMmNickname() {
		return ifMmNickname;
	}
	public void setIfMmNickname(String ifMmNickname) {
		this.ifMmNickname = ifMmNickname;
	}
	
}
