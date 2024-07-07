package com.lotte.cinema.home.slider.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.cinema.home.slider.entity.HomeEntity;
import com.lotte.cinema.home.slider.service.HomeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SliderController {

	private final HomeService homeService;
	
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView view = new ModelAndView();
		List<HomeEntity.MainSlider> info = homeService.getMainSliderInfo();
		view.setViewName("home/home");
		view.addObject("info",info);
		System.out.println("================="+info.get(0).getMoveVidPath());
		return view;
	}
	
	
}
