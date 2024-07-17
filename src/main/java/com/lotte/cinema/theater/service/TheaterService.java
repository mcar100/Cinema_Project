package com.lotte.cinema.theater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.lotte.cinema.theater.dto.TheaterGroupDTO;
import com.lotte.cinema.theater.entity.Region;
import com.lotte.cinema.theater.entity.Theater;
import com.lotte.cinema.theater.repository.RegionRepository;
import com.lotte.cinema.theater.repository.TheaterRepository;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepository tr;
	@Autowired
	private RegionRepository rr;
	
	public TheaterGroupDTO getRegionAll(){
		List<Region> regions= rr.findAll(Sort.by("id").ascending());
		List<Theater> theaters = tr.findAll(Sort.by("id").ascending());
		
		TheaterGroupDTO theaterGroupDTO = new TheaterGroupDTO(regions, theaters);
		
		return theaterGroupDTO;
	}
}
