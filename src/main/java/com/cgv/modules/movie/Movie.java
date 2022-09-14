package com.cgv.modules.movie;

import java.util.Date;

public class Movie {
	private String mSeq;
	private String mNameKor;
	private String mNameEn;
	private Integer mAgeLimit;
	private Integer mRunningTime;
	private Integer mCountry;
	private Date mOpenDate;
	private String mExplantion;
	private double mRate;
	
	
	public double getmRate() {
		return mRate;
	}
	public void setmRate(double mRate) {
		this.mRate = mRate;
	}
	public String getmSeq() {
		return mSeq;
	}
	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public String getmNameKor() {
		return mNameKor;
	}
	public void setmNameKor(String mNameKor) {
		this.mNameKor = mNameKor;
	}
	public String getmNameEn() {
		return mNameEn;
	}
	public void setmNameEn(String mNameEn) {
		this.mNameEn = mNameEn;
	}
	public Integer getmAgeLimit() {
		return mAgeLimit;
	}
	public void setmAgeLimit(Integer mAgeLimit) {
		this.mAgeLimit = mAgeLimit;
	}
	public Integer getmRunningTime() {
		return mRunningTime;
	}
	public void setmRunningTime(Integer mRunningTime) {
		this.mRunningTime = mRunningTime;
	}
	public Integer getmCountry() {
		return mCountry;
	}
	public void setmCountry(Integer mCountry) {
		this.mCountry = mCountry;
	}
	public Date getmOpenDate() {
		return mOpenDate;
	}
	public void setmOpenDate(Date mOpenDate) {
		this.mOpenDate = mOpenDate;
	}
	public String getmExplantion() {
		return mExplantion;
	}
	public void setmExplantion(String mExplantion) {
		this.mExplantion = mExplantion;
	}
}