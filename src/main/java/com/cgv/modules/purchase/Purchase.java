package com.cgv.modules.purchase;

import java.util.Date;


public class Purchase {
	private String dSeq;
	private String mSeq;
	private String stSeq;
	private String mNameKor;
	private String mAgeLimit;
	private Integer src;
	private Date dDateTime;
	private Integer thLocation;
	private String thName;
	private Integer scScreenType;
	private Integer scTotalSeat;
	private Integer scNumber;
	private Integer scRow;
	private Integer scCol;
	private String dDate;
	private String dTime;
	private Integer stRow;
	private Integer stCol;
	private Integer stUseNy;
	private String stPrice;
	private String totalPrice;
	private String thisTime;
	private String thisDate;
	private String ifMmSeq;
	private String ifMmName;
	private String ifMmId;
	private String ptSeq;
	private String sessId;
	
	public String getSessId() {
		return sessId;
	}
	public void setSessId(String sessId) {
		this.sessId = sessId;
	}
	//response
	public String tid;
	public String next_redirect_pc_url;
	public String created_at;
	
	//response
    private String aid;
    public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getPayment_method_type() {
		return payment_method_type;
	}
	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}
	public Object getAmount() {
		return amount;
	}
	public void setAmount(Object amount) {
		this.amount = amount;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getTax_free() {
		return tax_free;
	}
	public void setTax_free(Integer tax_free) {
		this.tax_free = tax_free;
	}
	public Integer getVat() {
		return vat;
	}
	public void setVat(Integer vat) {
		this.vat = vat;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Object getCard_info() {
		return card_info;
	}
	public void setCard_info(Object card_info) {
		this.card_info = card_info;
	}
	public String getPurchase_corp() {
		return purchase_corp;
	}
	public void setPurchase_corp(String purchase_corp) {
		this.purchase_corp = purchase_corp;
	}
	public String getPurchase_corp_code() {
		return purchase_corp_code;
	}
	public void setPurchase_corp_code(String purchase_corp_code) {
		this.purchase_corp_code = purchase_corp_code;
	}
	public String getIssuer_corp() {
		return issuer_corp;
	}
	public void setIssuer_corp(String issuer_corp) {
		this.issuer_corp = issuer_corp;
	}
	public String getIssuer_corp_code() {
		return issuer_corp_code;
	}
	public void setIssuer_corp_code(String issuer_corp_code) {
		this.issuer_corp_code = issuer_corp_code;
	}
	public String getBin() {
		return bin;
	}
	public void setBin(String bin) {
		this.bin = bin;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public String getInstall_month() {
		return install_month;
	}
	public void setInstall_month(String install_month) {
		this.install_month = install_month;
	}
	public String getApproved_id() {
		return approved_id;
	}
	public void setApproved_id(String approved_id) {
		this.approved_id = approved_id;
	}
	public String getCard_mid() {
		return card_mid;
	}
	public void setCard_mid(String card_mid) {
		this.card_mid = card_mid;
	}
	public String getInterest_free_install() {
		return interest_free_install;
	}
	public void setInterest_free_install(String interest_free_install) {
		this.interest_free_install = interest_free_install;
	}
	public String getCard_item_code() {
		return card_item_code;
	}
	public void setCard_item_code(String card_item_code) {
		this.card_item_code = card_item_code;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getPayload() {
		return payload;
	}
	public void setPayload(String payload) {
		this.payload = payload;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTax_free_amount() {
		return tax_free_amount;
	}
	public void setTax_free_amount(Integer tax_free_amount) {
		this.tax_free_amount = tax_free_amount;
	}
	public Integer getVat_amount() {
		return vat_amount;
	}
	public void setVat_amount(Integer vat_amount) {
		this.vat_amount = vat_amount;
	}
	public Date getApproved_at() {
		return approved_at;
	}
	public void setApproved_at(Date approved_at) {
		this.approved_at = approved_at;
	}
	private String cid; 
    private String sid; 
    private String partner_order_id;
    private String partner_user_id;
    private String payment_method_type;
    
    //amout 객체 안에 데이터
    private Object amount;
    private Integer total;
    private Integer tax_free;
    private Integer vat;
    private Integer point;
    private Integer discount;
    
    //card_info 객체 안에 데이터
    private Object card_info;
	private String purchase_corp;
	private String purchase_corp_code;
    private String issuer_corp;
    private String issuer_corp_code;
    private String bin;
    private String card_type;
    private String install_month;
    private String approved_id;
    private String card_mid;
    private String interest_free_install;
    private String card_item_code;
    private String item_name;
    private String item_code;
    private String payload;
    private Integer quantity;
    private Integer tax_free_amount;
    private Integer vat_amount;
    private Date approved_at;
    private String pg_token;
	
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getPg_token() {
		return pg_token;
	}
	public void setPg_token(String pg_token) {
		this.pg_token = pg_token;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getPtSeq() {
		return ptSeq;
	}
	public void setPtSeq(String ptSeq) {
		this.ptSeq = ptSeq;
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
	public String getIfMmId() {
		return ifMmId;
	}
	public void setIfMmId(String ifMmId) {
		this.ifMmId = ifMmId;
	}
	public String getThisTime() {
		return thisTime;
	}
	public void setThisTime(String thisTime) {
		this.thisTime = thisTime;
	}
	public String getThisDate() {
		return thisDate;
	}
	public void setThisDate(String thisDate) {
		this.thisDate = thisDate;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStSeq() {
		return stSeq;
	}
	public void setStSeq(String stSeq) {
		this.stSeq = stSeq;
	}
	public Integer getStRow() {
		return stRow;
	}
	public void setStRow(Integer stRow) {
		this.stRow = stRow;
	}
	public Integer getStCol() {
		return stCol;
	}
	public void setStCol(Integer stCol) {
		this.stCol = stCol;
	}
	public Integer getStUseNy() {
		return stUseNy;
	}
	public void setStUseNy(Integer stUseNy) {
		this.stUseNy = stUseNy;
	}
	public String getStPrice() {
		return stPrice;
	}
	public void setStPrice(String string) {
		this.stPrice = string;
	}
	public String getdTime() {
		return dTime;
	}
	public void setdTime(String dTime) {
		this.dTime = dTime;
	}
	public String getdDate() {
		return dDate;
	}
	public void setdDate(String dDate) {
		this.dDate = dDate;
	}
	public String getmSeq() {
		return mSeq;
	}
	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public String getdSeq() {
		return dSeq;
	}
	public void setdSeq(String dSeq) {
		this.dSeq = dSeq;
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
	public Date getdDateTime() {
		return dDateTime;
	}
	public void setdDateTime(Date dDateTime) {
		this.dDateTime = dDateTime;
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
	public Integer getScScreenType() {
		return scScreenType;
	}
	public void setScScreenType(Integer scScreenType) {
		this.scScreenType = scScreenType;
	}
	public Integer getScTotalSeat() {
		return scTotalSeat;
	}
	public void setScTotalSeat(Integer scTotalSeat) {
		this.scTotalSeat = scTotalSeat;
	}
	public Integer getScNumber() {
		return scNumber;
	}
	public void setScNumber(Integer scNumber) {
		this.scNumber = scNumber;
	}
	public Integer getScRow() {
		return scRow;
	}
	public void setScRow(Integer scRow) {
		this.scRow = scRow;
	}
	public Integer getScCol() {
		return scCol;
	}
	public void setScCol(Integer scCol) {
		this.scCol = scCol;
	}
	
}
