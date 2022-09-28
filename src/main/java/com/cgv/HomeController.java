package com.cgv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cgv.modules.movie.Movie;
import com.cgv.modules.movie.MovieServiceImpl;
import com.cgv.modules.movie.MovieVo;

@Controller
@RequestMapping(value = "/")
public class HomeController {
		
	@Autowired MovieServiceImpl MovieServiceImpl;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "main")
	public String main() {
		return "infra/main/admin/login";
	}
	
	@RequestMapping(value = "first")
	public String first() {
		return "infra/main/admin/firstPageView";
	}
	
	@RequestMapping(value = "home")
	public String home(HttpSession httpSession, MovieVo vo, Model model) throws Exception {
		List<Movie> list = MovieServiceImpl.selectList(vo);
		model.addAttribute("list", list);
		
		System.out.println(httpSession.getAttribute("sessId"));
		System.out.println(httpSession.getAttribute("sessName"));
		System.out.println(httpSession.getAttribute("sessSeq"));
		
		return "infra/main/user/main";
	}
	
}
