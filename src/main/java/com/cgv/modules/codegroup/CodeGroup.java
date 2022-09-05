package com.cgv.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	private String ccgSeq;
	private String codeGroup;
	private String codeGroupK;
	private String reference;
	private Integer ccgUseNy;
	private Integer ccgOrder;
	private Integer cnt;
	private Integer ccgDelNy;
	private Date ccgDate;
	
	public Date getCcgDate() {
		return ccgDate;
	}
	public void setCcgDate(Date ccgDate) {
		this.ccgDate = ccgDate;
	}
	public Integer getCcgDelNy() {
		return ccgDelNy;
	}
	public void setCcgDelNy(Integer ccgDelNy) {
		this.ccgDelNy = ccgDelNy;
	}
	public String getCodeGroupK() {
		return codeGroupK;
	}
	public void setCodeGroupK(String codeGroupK) {
		this.codeGroupK = codeGroupK;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
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
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public Integer getCcgUseNy() {
		return ccgUseNy;
	}
	public void setCcgUseNy(Integer ccgUseNy) {
		this.ccgUseNy = ccgUseNy;
	}
	public Integer getCcgOrder() {
		return ccgOrder;
	}
	public void setCcgOrder(Integer ccgOrder) {
		this.ccgOrder = ccgOrder;
	}
	
	
}
