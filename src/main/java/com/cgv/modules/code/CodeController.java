package com.cgv.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception{
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception{
		
		List<CodeGroup> list = codeGroupServiceImpl.selectList();
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception{
		int result = service.insert(dto);
		System.out.println("controller result" + result);
	
	return "redirect:/code/codeList";
	
	}
}
