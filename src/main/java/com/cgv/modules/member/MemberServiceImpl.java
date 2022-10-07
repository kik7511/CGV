package com.cgv.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cgv.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList();
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public int insert(Member dto) throws Exception{
		try {
			dto.setIfMmPassWord(UtilSecurity.encryptSha256(dto.getIfMmPassWord()));
			return dao.insert(dto);
		}catch(Exception e) {
			throw new Exception();
		}
		
	}
	
	@Override
	public int update(Member dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Member dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public int checkId(Member dto) throws Exception{
		return dao.checkId(dto);
	}
	
	@Override
	public Member login(Member dto) throws Exception{
		dto.setIfMmPassWord(UtilSecurity.encryptSha256(dto.getIfMmPassWord()));
		return dao.login(dto);
	}
	
	@Override
	public Member loginM(Member dto) throws Exception{
		dto.setIfMmPassWord(UtilSecurity.encryptSha256(dto.getIfMmPassWord()));
		return dao.loginM(dto);
	}
	
	
}
