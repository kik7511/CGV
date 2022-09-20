package com.cgv.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cgv.modules.codegroup.CodeGroup;
import com.cgv.modules.codegroup.CodeGroupServiceImpl;
import com.cgv.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl codeGroupServiceImpl;
	
	public void setSearchAndPaging(CodeVo vo) throws Exception{
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		vo.setParamPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception{
		
		setSearchAndPaging(vo);
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model, @ModelAttribute("vo") CodeVo vo, CodeGroupVo vo1) throws Exception{
		
		List<CodeGroup> list = codeGroupServiceImpl.select(vo1);
		model.addAttribute("list", list);	
		
		Code item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto, RedirectAttributes redirectAttributes, @ModelAttribute("vo") CodeVo vo) throws Exception{
		int result = service.insert(dto);
		System.out.println("controller result" + result);
		
		vo.setCcSeq(dto.getCcSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
	
	return "redirect:/code/codeForm";
	
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(Code dto, @ModelAttribute("vo") CodeVo vo, RedirectAttributes redirectAttributes) throws Exception{
		int result = service.update(dto);
		System.out.println("codeUpdt result = "+result);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUelete")
	public String codeUelete(Code dto) throws Exception{
		service.uelete(dto);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDelete")
	public String codeDelete(CodeVo vo) throws Exception{
		service.delete(vo);
		
		return "redirect:/code/codeList";
	}
}
