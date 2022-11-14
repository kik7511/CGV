package com.cgv.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cgv.common.util.UtilDateTime;
import com.cgv.modules.code.CodeServiceImpl;


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
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo, HttpSession httpSession) throws Exception{
	
		setSearchAndPaging(vo);
		
		System.out.println("답: " + vo.getTotalRows());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		System.out.println(httpSession.getAttribute("sessMId"));
		System.out.println(httpSession.getAttribute("sessMName"));
		System.out.println(httpSession.getAttribute("sessMSeq"));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberAjaxList")
	public String memberAjaxList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);

		return "infra/member/xdmin/memberAjaxList";
	}
	
	
	@RequestMapping(value = "memberAjaxLita")
	public String memberAjaxLita(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return "infra/member/xdmin/memberAjaxLita";
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
		service.signup(dto);
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
	public String mypageForm(Member dto, Model model) throws Exception{
		List<Member> list = service.myPage(dto);
		model.addAttribute("list", list);
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
	
	@ResponseBody
	@RequestMapping(value = "checkNickname")
		public Map<String, Object> checkNickname(Member dto) throws Exception {
	
		Map<String, Object> returnMap = new HashMap<String, Object>();

		int result = service.checkNickname(dto);
		System.out.println("닉네임 값은" + result);
	
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
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
				httpSession.setAttribute("sessRank", rtMember.getIfMmRank());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "loginMProc")
	public Map<String, Object> loginMProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.loginM(dto);

			if (rtMember != null) {
				httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
				httpSession.setAttribute("sessMSeq", rtMember.getIfMmSeq());
				httpSession.setAttribute("sessMId", rtMember.getIfMmId());
				httpSession.setAttribute("sessMName", rtMember.getIfMmName());
				httpSession.setAttribute("sessMNickname", rtMember.getIfMmNickname());
				
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
	
	@ResponseBody
	@RequestMapping(value = "logoutMProc")
	public Map<String, Object> logoutMProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping(value = "kakaoCallback")
	public String kakaoCallback() throws Exception {
		return "infra/member/user/kakaoCallback";
	}
	
	@RequestMapping(value = "kakaoLoginProc")
	public String kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
		Member kakaoLogin = service.snsLogin(dto);
		
		if(kakaoLogin == null) {
			service.kakaoInst(dto);
			Member kakao = service.snsLogin(dto);
			httpSession.setAttribute("sessSeq", kakao.getIfMmSeq());
			httpSession.setAttribute("sessId", kakao.getIfMmId());
			httpSession.setAttribute("sessName", kakao.getIfMmName());
			httpSession.setAttribute("sessEmail", kakao.getIfMmEmail());
			/*
			 * session(kakao.getIfMmSeq(), kakao.getIfMmId(), kakao.getIfMmName(),
			 * kakao.getIfMmEmail(), httpSession);
			 */
			
		}else {
			httpSession.setAttribute("sessSeq", kakaoLogin.getIfMmSeq());
			httpSession.setAttribute("sessId", kakaoLogin.getIfMmId());
			httpSession.setAttribute("sessName", kakaoLogin.getIfMmName());
			httpSession.setAttribute("sessEmail", kakaoLogin.getIfMmEmail());
			/*
			 * session(kakaoLogin.getIfMmSeq(), kakaoLogin.getIfMmId(),
			 * kakaoLogin.getIfMmName(), kakaoLogin.getIfMmEmail(), httpSession);
			 */
		}
		
		return "redirect:/home";
	}
	
	public void session(String seq, String id, String name, String email, HttpSession httpSession) {
		httpSession.setAttribute("sessSeq", seq);
		httpSession.setAttribute("sessId", id);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessEmail", email);
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "이름", "성별", "생년월일", "아이디", "연락처", "이메일", "마케팅 동의여부"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getIfMmSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfMmName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				/*
				 * int gen = list.get(i).getIfMmGender(); String gender = String.valueOf(gen);
				 */
	        	/*cell.setCellValue(list.get(i).getIfMmGender());*/
	        	cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfMmGender()));
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfMmDob());
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfMmId());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfMmPhone());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfMmEmail() + "@" + CodeServiceImpl.selectOneCachedCode(list.get(i).getIfMmEmailAddress()));
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfMmMarketing()));
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	
	
}
