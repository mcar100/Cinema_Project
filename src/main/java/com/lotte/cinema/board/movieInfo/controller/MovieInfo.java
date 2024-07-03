package com.lotte.cinema.board.movieInfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieInfo {
	
	@GetMapping("/movieInfo")
	public String main() {
		return "movieInfo/movieInfo";
	}

}
