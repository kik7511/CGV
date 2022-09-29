package com.cgv.modules.movie;

import java.util.List;

public interface MovieService {
	public List<Movie> selectList(MovieVo vo) throws Exception;
	public Movie selectOne(MovieVo vo) throws Exception;
	public List<Movie> selectMovie(MovieVo vo) throws Exception;
	public List<Movie> selectGenre(MovieVo vo) throws Exception;
}
