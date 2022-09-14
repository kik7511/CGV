package com.cgv.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/movie/")
public class MovieController {
	
	@Autowired
	MovieServiceImpl service;
	
	@RequestMapping(value = "movieList")
	public String movieList(MovieVo vo, Model model) throws Exception{
		List<Movie> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/movie/user/movieChartView";
	}
	
	@RequestMapping(value = "movieInfoView")
	public String movieInfoView(Movie dto) throws Exception{
		
		return "infra/movie/user/movieInfoView";
	}
}
