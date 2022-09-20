package com.cgv.modules.code;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cgv.modules.codegroup.CodeGroup;

public class Code extends CodeGroup {
	private String ccSeq;
	private String ccCodeName;
	private Integer ccUseNy;
	private Integer ORDER;
	private Date ccDate;
	private Integer ccDelNy;
	private String ccgSeq;
	private String codeGroup;
	private String codeGroupK;
	private String code;
	private String codeK;
	private Integer ccOrder;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

	public Integer getCcOrder() {
		return ccOrder;
	}
	public void setCcOrder(Integer ccOrder) {
		this.ccOrder = ccOrder;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCodeK() {
		return codeK;
	}
	public void setCodeK(String codeK) {
		this.codeK = codeK;
	}
	public String getCcSeq() {
		return ccSeq;
	}
	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}
	public String getCcCodeName() {
		return ccCodeName;
	}
	public void setCcCodeName(String ccCodeName) {
		this.ccCodeName = ccCodeName;
	}
	public Integer getCcUseNy() {
		return ccUseNy;
	}
	public void setCcUseNy(Integer ccUseNy) {
		this.ccUseNy = ccUseNy;
	}
	public Integer getORDER() {
		return ORDER;
	}
	public void setORDER(Integer oRDER) {
		ORDER = oRDER;
	}
	public Date getCcDate() {
		return ccDate;
	}
	public void setCcDate(Date ccDate) {
		this.ccDate = ccDate;
	}
	public Integer getCcDelNy() {
		return ccDelNy;
	}
	public void setCcDelNy(Integer ccDelNy) {
		this.ccDelNy = ccDelNy;
	}
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getCodeGroup() {
		return codeGroup;
	}
	public void setCodeGroup(String codeGroup) {
		this.codeGroup = codeGroup;
	}
	public String getCodeGroupK() {
		return codeGroupK;
	}
	public void setCodeGroupK(String codeGroupK) {
		this.codeGroupK = codeGroupK;
	}
	

	
	
	
}
