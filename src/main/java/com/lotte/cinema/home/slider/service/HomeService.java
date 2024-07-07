package com.lotte.cinema.home.slider.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lotte.cinema.home.slider.entity.HomeEntity;
import com.lotte.cinema.home.slider.repository.HomeRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class HomeService {

	private final HomeRepository homeRepository;
	
	
	public List<HomeEntity.MainSlider> getMainSliderInfo() {
		return homeRepository.findAll();
	}
}
