	package com.cgv.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.codegroup.CodeGroupMapper";
	
	//public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo);}
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		//List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.cgv.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list;
	}
	public List<CodeGroup> selectList(){
		//List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.cgv.modules.codegroup.CodeGroupMapper.selectList", "");
		return list;
	}
	
	public List<CodeGroup> select(CodeGroupVo vo){
		List<CodeGroup> list = sqlSession.selectList("com.cgv.modules.codegroup.CodeGroupMapper.select", "");
		return list;
	}
	
	public int selectOneCount(CodeGroupVo vo){
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		return result;
	}
	
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +  result);
		return result;
	}
	
	public CodeGroup selectOne(CodeGroupVo vo){
		CodeGroup item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	
	public int update(CodeGroup dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		System.out.println("dao result: " +  result);
		return result;
				
	}
	
	public int uelete(CodeGroup dto) {
		int result = sqlSession.update(namespace +".uelete", dto);
		return result;
	}
	
	public int delete(CodeGroupVo vo) {
		int result = sqlSession.delete(namespace + ".delete", vo);
		System.out.println("dao result: " +  result);
		return result;
	}
	
	
	
}
