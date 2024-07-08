package com.lotte.cinema.home.slider.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lotte.cinema.home.slider.entity.HomeEntity.MainSlider;

@Repository
public interface HomeRepository extends JpaRepository<MainSlider, Integer>{
	
}
