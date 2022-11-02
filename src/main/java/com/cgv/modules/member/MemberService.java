package com.cgv.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectList() throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int signup(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	public int checkId(Member dto) throws Exception;
	public int checkNickname(Member dto) throws Exception;
	public Member login(Member dto) throws Exception;
	public Member snsLogin(Member dto) throws Exception;
	public Member loginM(Member dto) throws Exception;
	public int kakaoInst(Member dto) throws Exception;
	public List<Member> myPage(Member dto) throws Exception;
}
