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
	
}
