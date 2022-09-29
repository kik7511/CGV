package com.cgv.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired 
	MovieDao dao;
	
	@Override
	public List<Movie> selectList(MovieVo vo) throws Exception{
		List<Movie> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public Movie selectOne(MovieVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	
	@Override
	public List<Movie> selectMovie(MovieVo vo) throws Exception{
		return dao.selectMovie(vo);
	}
	
	@Override
	public List<Movie> selectGenre(MovieVo vo) throws Exception{
		return dao.selectGenre(vo);
	}
}
