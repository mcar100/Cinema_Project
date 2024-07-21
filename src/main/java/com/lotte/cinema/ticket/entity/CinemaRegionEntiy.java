package com.lotte.cinema.ticket.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

public class CinemaRegionEntiy {

	@Entity
	@Getter
	@Setter
	@Table(name="cinema_region")
	public static class MainRegion{
		
		@Id
		private int region_num;
		
		@Column(name = "region_name")
		private  String  regionName;
		
		
	}
}
