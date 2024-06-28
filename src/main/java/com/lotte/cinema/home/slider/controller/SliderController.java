package com.lotte.cinema.home.slider.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SliderController {

	
	@GetMapping("/home")
	public String home() {
		return "home/home";
	}
}
