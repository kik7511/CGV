package com.cgv.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String movieInfoView(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		Movie item = service.selectOne(vo);
		List<Movie> movie = service.selectMovie(vo);
		List<Movie> genre = service.selectGenre(vo);
		model.addAttribute("item", item);
		model.addAttribute("movie", movie);
		model.addAttribute("genre", genre);
		
		return "infra/movie/user/movieInfoView";
	}
}
