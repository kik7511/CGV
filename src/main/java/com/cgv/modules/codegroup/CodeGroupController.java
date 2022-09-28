package com.cgv.modules.codegroup;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
public void setSearchAndPaging(CodeGroupVo vo) throws Exception{
	
	vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	//vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
	
	vo.setParamsPaging(service.selectOneCount(vo));
}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, @ModelAttribute("vo") CodeGroupVo vo, HttpSession httpSession) throws Exception{
		
		setSearchAndPaging(vo);
		
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		System.out.println(httpSession.getAttribute("sessMId"));
		System.out.println(httpSession.getAttribute("sessMName"));
		System.out.println(httpSession.getAttribute("sessMSeq"));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto, CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println("dto.getCcgSeq(): "+dto.getCcgSeq());
		
		vo.setCcgSeq(dto.getCcgSeq());
		System.out.println("vo.getCcgSeq(): " + vo.getCcgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		System.out.println("vo.getCcgSeq(): "+ vo.getCcgSeq());
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupMod")
	public String codeGroupMod(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		int result = service.update(dto);
		System.out.println("controller result: " + result);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) throws Exception{
		int result = service.uelete(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDelete")
	public String codeGroupDelete(CodeGroupVo vo) throws Exception{
		int result = service.delete(vo);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}

}
