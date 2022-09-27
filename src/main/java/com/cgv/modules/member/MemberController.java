package com.cgv.modules.member;

import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.LongToIntFunction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception{
	
		setSearchAndPaging(vo);
		
		System.out.println("답: " + vo.getTotalRows());
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
	
	@RequestMapping(value = "signupInst")
	public String signupInst(Member dto) throws Exception{
		service.insert(dto);
		return "redirect:/member/loginForm";
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
	
	@ResponseBody
	@RequestMapping(value = "checkId")
		public Map<String, Object> checkId(Member dto) throws Exception {
	
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.checkId(dto);
		System.out.println("값은" + result);
	
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	/*
	 * @RequestMapping(value = "login") public String login(Member dto,
	 * HttpServletRequest request) throws Exception { Member login =
	 * service.login(dto);
	 * 
	 * if(login != null) { System.out.println("로그인 성공"); HttpSession session =
	 * request.getSession(); String id = login.getIfMmId(); String nickName =
	 * login.getIfMmNickname(); session.setAttribute("loginId", id);
	 * session.setAttribute("ifMmNickName", nickName); System.out.println(id);
	 * System.out.println(nickName); }else { System.out.println("로그인 실패"); } return
	 * "redirect:/home"; }
	 */
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.login(dto);

			if (rtMember != null) {
				httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember.getIfMmSeq());
				httpSession.setAttribute("sessId", rtMember.getIfMmId());
				httpSession.setAttribute("sessName", rtMember.getIfMmName());
				httpSession.setAttribute("sessNickname", rtMember.getIfMmNickname());
				/*
				 * System.out.println(httpSession.getAttribute("sessId"));
				 * System.out.println(httpSession.getAttribute("sessName"));
				 * System.out.println(httpSession.getAttribute("sessSeq"));
				 * System.out.println(httpSession.getAttribute("sessNickName"));
				 */
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		return returnMap;
	}
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
}
