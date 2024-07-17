package com.lotte.cinema.theater.dto;

import com.lotte.cinema.theater.entity.Theater;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class TheaterDTO {
	private Long id;
	private String name;
	
	public TheaterDTO(Theater theater) {
		this.id = theater.getId();
		this.name = theater.getName();
	}
}
