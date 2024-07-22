package com.lotte.cinema.ticket.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

public class TicketEntity {

	
	@Entity
	@Getter
	@Setter
	@Table(name="cinema_location")
	public static class MainTicket{
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY) // 기본키 자동생성
		private int cinemaNum;
		
		@Column(name = "cinema_region")
		private  String  cinemaRegion;
		@Column(name = "cinema_name")
		private  String  cinemaName;
		
		
		
		
	}
}
