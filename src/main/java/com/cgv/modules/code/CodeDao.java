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
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Code selectOne(CodeVo vo) {
		Code item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	
}
