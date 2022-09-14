package com.cgv.modules.movie;

import java.util.List;

public interface MovieService {
	public List<Movie> selectList(MovieVo vo) throws Exception;
}
