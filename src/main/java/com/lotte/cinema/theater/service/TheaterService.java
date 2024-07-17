package com.lotte.cinema.theater.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.entity.FaqBoard;
import com.lotte.cinema.theater.dto.RegionDTO;
import com.lotte.cinema.theater.entity.Region;
import com.lotte.cinema.theater.repository.RegionRepository;
import com.lotte.cinema.theater.repository.TheaterRepository;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepository tr;
	@Autowired
	private RegionRepository rr;
	
	public List<RegionDTO> getRegionAll(){
		List<Region> regions= rr.findAll(Sort.by("id").ascending());
		List<RegionDTO> regionDTOs = new ArrayList<RegionDTO>();
		for(Region origin: regions){
			RegionDTO target = new RegionDTO();
			BeanUtils.copyProperties(origin, target);
			regionDTOs.add(target);
		}
		
		return regionDTOs;
	}
}
