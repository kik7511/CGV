package com.cgv.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception{
		
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		//vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(Model model, MemberVo vo) throws Exception{
		
		setSearchAndPaging(vo);
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
		
	@RequestMapping(value = "memberForm")
	public String memberForm(Member dto, @ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto, @ModelAttribute("vo") MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		vo.setIfMmSeq(dto.getIfMmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(Member dto, @ModelAttribute("vo") MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		int result = service.update(dto);
		System.out.println("controller result: " + result);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberUelete")
	public String memberUelete(Member dto) throws Exception{
		int result = service.uelete(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberDelete")
	public String memberDelete(MemberVo vo) throws Exception{
		int result = service.delete(vo);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
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
