package com.lotte.cinema.home.slider.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lotte.cinema.home.slider.dto.HomeDto.MovieImgDto;
import com.lotte.cinema.home.slider.dto.HomeDto.MovieRankDto;
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
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 메인가져옴&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		return homeRepository.findAll();
	}
	
	public List<MovieImgDto> getSubImg(){
//		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountAsc();
		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		List<MovieImgDto> dtoList = new ArrayList<>();
		
		
		
		for(MovieImg Imgs : ImgList) {
			MovieImgDto dto = new MovieImgDto();
			MovieRankDto rankDto = new MovieRankDto();
			
			dto.setMovieImgName(Imgs.getMovieImgName());
			dto.setMovieImgPath(Imgs.getMovieImgPath());
			dto.setMovieName(Imgs.getMovieName());
			rankDto.setMovieCount(Imgs.getMovieRank().getMovieCount());
			rankDto.setMovieStar(Imgs.getMovieRank().getMovieStar());
			rankDto.setMovieGrade(Imgs.getMovieRank().getMovieGrade());
			dto.setRankDto(rankDto);
			dtoList.add(dto);
		}
//		return subSliderRepository.findByMovieRankIsNotNull();
//		return subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		return dtoList;
		
	}
	
}
