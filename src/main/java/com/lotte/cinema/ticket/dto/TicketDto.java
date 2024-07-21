package com.lotte.cinema.ticket.dto;

import lombok.Data;

public class TicketDto {
	
	@Data
	public static class TicketInfo{
		
		private String regionName;
		private int    cinemaEA;
	}
}
