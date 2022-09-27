package com.cgv;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class HomeController {
		
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "main", method = RequestMethod.GET)
	/* public String home(Locale locale, Model model) { */
		public String main() {
		/*
		 * logger.info("Welcome home! The client locale is {}.", locale);
		 * 
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 */
		
		return "infra/main/admin/login";
	}
	
	@RequestMapping(value = "first")
	public String first() {
		return "infra/main/admin/firstPageView";
	}
	
	@RequestMapping(value = "home")
	public String home(HttpSession httpSession) {
		
		System.out.println(httpSession.getAttribute("sessId"));
		System.out.println(httpSession.getAttribute("sessName"));
		System.out.println(httpSession.getAttribute("sessSeq"));
		
		return "infra/main/user/main";
	}
	
}
