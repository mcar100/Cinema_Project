package com.lotte.cinema.home.slider.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lotte.cinema.home.slider.entity.MovieImg;

@Repository
public interface SubSliderRepository  extends JpaRepository<MovieImg, String> {

//	 List<MovieImg> findByMovieRankIsNotNull();
//	 List<MovieImg> findByMovieRankIsNotNullOrderByMovieRankMovieCountAsc();
	 List<MovieImg> findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
//	 return subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
}
