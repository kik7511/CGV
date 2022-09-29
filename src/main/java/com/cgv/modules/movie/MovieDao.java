package com.cgv.modules.movie;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cgv.modules.movie.MovieMapper";
	
	public List<Movie> selectList(MovieVo vo){
		List<Movie> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Movie selectOne(MovieVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public List<Movie> selectMovie(MovieVo vo){
		return sqlSession.selectList(namespace + ".selectMovie", vo);
	}
	
	public List<Movie> selectGenre(MovieVo vo){
		return sqlSession.selectList(namespace + ".selectGenre", vo);
	}
	
}
