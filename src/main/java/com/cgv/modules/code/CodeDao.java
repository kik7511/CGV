package com.cgv.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public int selectOneCount(CodeVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		return result;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Code selectOne(CodeVo vo) {
		Code item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	
	public int update(Code dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		return result;
	}
	
	public int uelete(Code dto) {
		int result = sqlSession.update(namespace + ".uelete", dto);
		return result;
	}
	
	public int delete(CodeVo vo) {
		int result = sqlSession.delete(namespace + ".delete", vo);
		return result;
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
	
}
