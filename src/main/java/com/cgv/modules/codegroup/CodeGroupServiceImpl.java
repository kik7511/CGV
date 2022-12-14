package com.cgv.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
	//@Override
	//public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		//return dao.selectList(vo);
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		List<CodeGroup> list = dao.selectList(vo);
		return list;
		}
	
	@Override
	public List<CodeGroup> select(CodeGroupVo vo) throws Exception {
		List<CodeGroup> list = dao.select(vo);
		return list;
		}
	
	@Override
	public List<CodeGroup> selectList() throws Exception {
		List<CodeGroup> list = dao.selectList();
		return list;
		}
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception{
		int result = dao.selectOneCount(vo);
		return result;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result" + result);
		return result;
		}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception{
		CodeGroup item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public int update(CodeGroup dto) throws Exception{
		int result = dao.update(dto);
		System.out.println("service result" + result);
		return result;
	}
	
	@Override
	public int uelete(CodeGroup dto) throws Exception{
		int result = dao.uelete(dto);
		return result;
	}
	
	@Override
	public int delete(CodeGroupVo vo) throws Exception{
		int result = dao.delete(vo);
		System.out.println("service result" + result);
		return result;
	}
	
	}
	
	
		

