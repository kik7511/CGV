package com.cgv.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList(Model model, MemberVo vo) throws Exception{
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
		
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception{
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto) throws Exception{
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "loginForm")
	public String loginForm() throws Exception{
		
		return "infra/member/user/loginForm";
	}
	
	@RequestMapping(value = "signupForm")
	public String signupForm() throws Exception{
		
		return "infra/member/user/signupForm";
	}
	
	@RequestMapping(value = "forgotIdForm")
	public String forgotIdForm() throws Exception{
		
		return "infra/member/user/forgotIdForm";
	}
	
	@RequestMapping(value = "forgotPasswordForm")
	public String forgotPasswordForm() throws Exception{
		
		return "infra/member/user/forgotPasswordForm";
	}
	
	@RequestMapping(value = "mypageForm")
	public String mypageForm() throws Exception{
		
		return "infra/member/user/mypageForm";
	}
	
	@RequestMapping(value = "mypageTicketForm")
	public String mypageTicketForm() throws Exception{
		
		return "infra/member/user/mypageTicketForm";
	}
}
