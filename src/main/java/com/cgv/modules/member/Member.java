package com.cgv.modules.member;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.cgv.common.base.Base;

public class Member extends Base {
	//ifMmMember
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
	private String name;
	private String id;
	private String phone;
	private String email;
	private String gender;
	private String dob;
	private Integer ifMmPrivate;
	private Integer stPrice;
	private String dDate;
	private String dTime;
	private String stRow;
	private Integer stCol;
	private Integer thLocation;
	private String thName;
	private String scScreenType;
	private String dSeq;
	private String mSeq;
	private String stSeq;
	private String mNameKor;
	private String mAgeLimit;
	private Integer src;
	private String total;
	private String aid;
	private String sessId;
	private String sessSeq;
	private Integer scNumber;
	
	public Integer getScNumber() {
		return scNumber;
	}
	public void setScNumber(Integer scNumber) {
		this.scNumber = scNumber;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	public String getSessId() {
		return sessId;
	}
	public void setSessId(String sessId) {
		this.sessId = sessId;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public Integer getStPrice() {
		return stPrice;
	}
	public void setStPrice(Integer stPrice) {
		this.stPrice = stPrice;
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
	public String getStRow() {
		return stRow;
	}
	public void setStRow(String stRow) {
		this.stRow = stRow;
	}
	public Integer getStCol() {
		return stCol;
	}
	public void setStCol(Integer stCol) {
		this.stCol = stCol;
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
	public String getScScreenType() {
		return scScreenType;
	}
	public void setScScreenType(String scScreenType) {
		this.scScreenType = scScreenType;
	}
	public String getdSeq() {
		return dSeq;
	}
	public void setdSeq(String dSeq) {
		this.dSeq = dSeq;
	}
	public String getmSeq() {
		return mSeq;
	}
	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public String getStSeq() {
		return stSeq;
	}
	public void setStSeq(String stSeq) {
		this.stSeq = stSeq;
	}
	public String getmNameKor() {
		return mNameKor;
	}
	public void setmNameKor(String mNameKor) {
		this.mNameKor = mNameKor;
	}
	public String getmAgeLimit() {
		return mAgeLimit;
	}
	public void setmAgeLimit(String mAgeLimit) {
		this.mAgeLimit = mAgeLimit;
	}
	public Integer getSrc() {
		return src;
	}
	public void setSrc(Integer src) {
		this.src = src;
	}
	public Integer getIfMmPrivate() {
		return ifMmPrivate;
	}
	public void setIfMmPrivate(Integer ifMmPrivate) {
		this.ifMmPrivate = ifMmPrivate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	private String profile_img;
	
	
	
	//upLoad
	
	private MultipartFile[] ifMmUploadedImage;
	private MultipartFile[] ifMmUploadedFile;
	
	// ---------------------
	
	public Integer getIfMmRank() {
		return ifMmRank;
	}
	public MultipartFile[] getIfMmUploadedImage() {
		return ifMmUploadedImage;
	}
	public void setIfMmUploadedImage(MultipartFile[] ifMmUploadedImage) {
		this.ifMmUploadedImage = ifMmUploadedImage;
	}
	public MultipartFile[] getIfMmUploadedFile() {
		return ifMmUploadedFile;
	}
	public void setIfMmUploadedFile(MultipartFile[] ifMmUploadedFile) {
		this.ifMmUploadedFile = ifMmUploadedFile;
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
