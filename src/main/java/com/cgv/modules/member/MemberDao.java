package com.cgv.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.member.MemberMapper";
	
	public List<Member> selectList(){ return sqlSession.selectList(namespace + ".selectList", "");}
	
	public List<Member> selectList(MemberVo vo){
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;		
	}
	
	public int selectOneCount(MemberVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		return result;
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao.result: "+result);
		return result;
	} 
	
	public int signup(Member dto) {
		int result = sqlSession.insert(namespace + ".signup", dto);
		System.out.println("dao.result: "+result);
		return result;
	}
	
	
	public Member selectOne(MemberVo vo) {
		Member item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	
	public int update(Member dto) {
		int result = sqlSession.update(namespace+ ".update", dto);
		return result;
	}
	
	public int uelete(Member dto) {
		int result = sqlSession.update(namespace + ".uelete", dto);
		return result;
	}
	
	public int delete(MemberVo vo) {
		int result = sqlSession.delete(namespace + ".delete", vo);
		return result;
	}
	
	public int checkId(Member dto) {
		int result = sqlSession.selectOne(namespace + ".checkId", dto);
		return result;
	}
	
	public int checkNickname(Member dto) {
		int result = sqlSession.selectOne(namespace + ".checkNickname", dto);
		return result;
	}
	
	public Member login(Member dto) {
		return sqlSession.selectOne(namespace + ".login", dto);
	} 
	
	public Member snsLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".snsLogin", dto);
	} 
	
	public Member loginM(Member dto) {
		return sqlSession.selectOne(namespace + ".loginM", dto);
	} 
	
	public int kakaoInst(Member dto) {
		int result = sqlSession.insert(namespace + ".kakaoInst", dto);
		System.out.println("dao.result: "+result);
		return result;
	} 
	
	public List<Member> myPage(Member dto){
		List<Member> list = sqlSession.selectList(namespace + ".myPage", dto);
		return list;		
	}
	
	public int myPageCheck(Member dto) {
		int result = sqlSession.selectOne(namespace + ".myPageCheck", dto);
		return result;
	}
	
//	uploaded
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
}
