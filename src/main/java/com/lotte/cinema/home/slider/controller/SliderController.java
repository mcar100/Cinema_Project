package com.lotte.cinema.home.slider.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.cinema.home.slider.entity.HomeEntity;
import com.lotte.cinema.home.slider.entity.MovieImg;
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
//		List<MovieImg> subInfo = homeService.getSubImg();
		
		
		view.setViewName("home/home");
		view.addObject("info",info);
//		view.addObject("subInfo",subInfo);
		System.out.println("====================================================");
//		for(MovieImg infos : subInfo) {
//			System.out.println(infos.getMovieImgPath()+infos.getMovieImgName());
//			System.out.println("====================================================");
//		}
		return view;
	}
	
	
}
