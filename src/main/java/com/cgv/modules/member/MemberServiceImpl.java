package com.cgv.modules.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cgv.common.util.UtilSecurity;
import com.cgv.common.util.UtilUpload;

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
			dao.insert(dto);
			
			int j = 0;
			for(MultipartFile multipartFile : dto.getIfMmUploadedImage()) {
				if(!multipartFile.isEmpty()) {
					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");		
	    			UtilUpload.upload(multipartFile, pathModule, dto);
	    			
		    		dto.setTableName("infrMemberUploaded");
		    		dto.setType(2);
		    		dto.setDefaultNy(j == 0 ? 1 : 0);
		    		dto.setSort(j + 1);
		    		dto.setPseq(dto.getIfMmSeq());
	
					dao.insertUploaded(dto);
					j++;
				}
			}
			
			return 1;
		}catch(Exception e) {
			throw new Exception();
		}
		
	}
	
	public int signup(Member dto) throws Exception{
		dto.setIfMmPassWord(UtilSecurity.encryptSha256(dto.getIfMmPassWord()));
		return dao.signup(dto);
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
	@Override
	public int kakaoInst(Member dto) throws Exception{
		return dao.kakaoInst(dto);
	}
	
	@Override
	public Member snsLogin(Member dto) throws Exception{
		return dao.snsLogin(dto);
	}
	
}
