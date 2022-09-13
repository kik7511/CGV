package com.cgv.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception{
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception{
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupView";
	}
	
	@RequestMapping(value = "codeGroupMod")
	public String codeGroupMod(CodeGroup dto) throws Exception{
		int result = service.update(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) throws Exception{
		int result = service.uelete(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDelete")
	public String codeGroupDelete(CodeGroup dto) throws Exception{
		int result = service.delete(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}

}
