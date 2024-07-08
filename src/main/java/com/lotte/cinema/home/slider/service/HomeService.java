package com.lotte.cinema.home.slider.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lotte.cinema.home.slider.dto.HomeDto.MovieImgDto;
import com.lotte.cinema.home.slider.entity.HomeEntity;
import com.lotte.cinema.home.slider.entity.MovieImg;
import com.lotte.cinema.home.slider.repository.HomeRepository;
import com.lotte.cinema.home.slider.repository.SubSliderRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class HomeService {

	private final HomeRepository homeRepository;
	private final SubSliderRepository subSliderRepository;
	
	public List<HomeEntity.MainSlider> getMainSliderInfo() {
		return homeRepository.findAll();
	}
	
	public List<MovieImgDto> getSubImg(){
		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountAsc();
		List<MovieImgDto> dtoList = new ArrayList<>();
		
		for(MovieImg Imgs : ImgList) {
			MovieImgDto dto = new MovieImgDto();
			dto.setMovieImgName(Imgs.getMovieImgName());
			dto.setMovieImgPath(Imgs.getMovieImgPath());
			dtoList.add(dto);
		}
//		return subSliderRepository.findByMovieRankIsNotNull();
//		return subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		return null;
		
	}
	
}
