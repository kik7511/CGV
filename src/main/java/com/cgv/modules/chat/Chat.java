package com.cgv.modules.chat;

public class Chat {
	
	private Integer chatSeq;
	private Integer chatDelNy;
	private Integer cuMember;
	private String chatCreateDate;
	
	//채팅 맴버 정보 추출을 위한 필드
	//아래 필드도 본인의 DB테이블에 맞게 변경해주세요
	private Integer ifMmSeq;       //유저 시퀀스
	private String ifMmName;   //유저 이름 or 닉네임
	private String path;       //프로필 이미지 경로
	private String uuidName;   //프로필 이미지 파일 이름
	
	public Integer getChatSeq() {
		return chatSeq;
	}
	public void setChatSeq(Integer chatSeq) {
		this.chatSeq = chatSeq;
	}
	public Integer getChatDelNy() {
		return chatDelNy;
	}
	public void setChatDelNy(Integer chatDelNy) {
		this.chatDelNy = chatDelNy;
	}
	public Integer getCuMember() {
		return cuMember;
	}
	public void setCuMember(Integer seq) {
		this.cuMember = seq;
	}
	public String getChatCreateDate() {
		return chatCreateDate;
	}
	public void setChatCreateDate(String chatCreateDate) {
		this.chatCreateDate = chatCreateDate;
	}
	public Integer getIfMmSeq() {
		return ifMmSeq;
	}
	public void setIfMmSeq(Integer ifMmSeq) {
		this.ifMmSeq = ifMmSeq;
	}
	public String getIfMmName() {
		return ifMmName;
	}
	public void setIfMmName(String ifMmName) {
		this.ifMmName = ifMmName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	
}
