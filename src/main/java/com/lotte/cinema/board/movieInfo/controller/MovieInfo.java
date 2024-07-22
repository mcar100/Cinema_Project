package com.lotte.cinema.board.movieInfo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lotte.cinema.board.movieInfo.dto.MovieDTO.ArteMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.CurrentMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.MovieAllDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.SlideDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.UpcomingMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.service.MovieInfoService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MovieInfo {
	
	private final MovieInfoService Ms;
	
	@GetMapping("/movieInfo")
	public String main(Model model) {
		
		// 슬라이드 정보
		List<SlideDTO> mainSlide = Ms.getSlideMovie();
		
		// 현재상영작 TOP5 정보
		List<CurrentMovieTop5DTO> currentMovieTop5 = Ms.getCurrentMovieFive();
		
		// 상영예정작 TOP5 정보
		List<UpcomingMovieTop5DTO> upcomingMovieTop5 = Ms.getUpcomingMovieFive();
		
		// 아르떼 TOP5 정보
		List<ArteMovieTop5DTO> arteMovieTop5 = Ms.getArteMovieFive();
		
		model.addAttribute("mainSlide", mainSlide);
		model.addAttribute("currentMovieTop5", currentMovieTop5);
		model.addAttribute("upcomingMovieTop5", upcomingMovieTop5);
		model.addAttribute("arteMovieTop5", arteMovieTop5);
		
		return "movieInfo/movieInfo";
	}
	
	@GetMapping("/movieInfo/detail")
	public String detail(Model model) {
		
		List<SlideDTO> mainSlide = Ms.getSlideMovie();
		
		List<MovieAllDTO> movieAll = Ms.getMovieAll();
		
		model.addAttribute("mainSlide", mainSlide);
		
		model.addAttribute("movieAll", movieAll);
		
		return "movieInfo/movieInfoDetail";
	}
	
	@GetMapping("/movieInfo/detail/contents")
    public String detailContents(@RequestParam("flag") int flag, Model model) {
		
        List<MovieAllDTO> movieAll = Ms.getMovieAllByFlag(flag);
        
        model.addAttribute("movieAll", movieAll);

        return "movieInfo/movieInfoContent";
    }

	
	


}
