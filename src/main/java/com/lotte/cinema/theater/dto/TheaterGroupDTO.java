package com.lotte.cinema.theater.dto;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.lotte.cinema.theater.entity.Region;
import com.lotte.cinema.theater.entity.Theater;

import lombok.Getter;

@Getter
public class TheaterGroupDTO {
	Map<String, List<TheaterDTO>> theaterGroup = new HashMap<>();
	
	public TheaterGroupDTO(List<Region> regions, List<Theater> theaters){
		
		for(Region r:regions) {
			List<TheaterDTO> t = theaters.stream()
						.filter(theater -> theater.getRegion().getId() == r.getId())
						.map(theater->new TheaterDTO(theater))
						.collect(Collectors.toList());
			theaterGroup.put(r.getName(), t);
		}
	}
	
}
