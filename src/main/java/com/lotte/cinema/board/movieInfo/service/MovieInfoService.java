package com.lotte.cinema.board.movieInfo.service;

import java.util.List;

import com.lotte.cinema.board.movieInfo.dto.MovieDTO.ArteMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.CurrentMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.MovieAllDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.SlideDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.UpcomingMovieTop5DTO;

public interface MovieInfoService {
	
	// 슬라이드 정보
	List<SlideDTO> getSlideMovie();
	
	// 현재상영작 탑5
	List<CurrentMovieTop5DTO> getCurrentMovieFive();
	
	// 상영예정작 탑5
	List<UpcomingMovieTop5DTO> getUpcomingMovieFive();
	
	// 아르떼 탑5
	List<ArteMovieTop5DTO> getArteMovieFive();
	
	// 디테일 페이지 정보
	List<MovieAllDTO> getMovieAll();
	
	// 모든 영화 정보
	List<MovieAllDTO> getMovieAllByFlag(int flag);


}
