package com.lotte.cinema.ticket.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lotte.cinema.board.movieInfo.entity.MovieInfo;
import com.lotte.cinema.ticket.entity.CinemaRegionEntiy.MainRegion;
import com.lotte.cinema.ticket.entity.TicketEntity.MainTicket;
import com.lotte.cinema.ticket.repository.AllMovieInfoRepository;
import com.lotte.cinema.ticket.repository.SubRegionRepository;
import com.lotte.cinema.ticket.repository.TicketRegionRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TicketService {

	private final TicketRegionRepository ticketRegionRepository;
	private final SubRegionRepository subRegionRepository;
	private final AllMovieInfoRepository allMovieInfoRepository;
	
	public List<MainRegion> getTicketInfo() {
		System.out.println("===================== 티켓가져옴 =====================");
		return ticketRegionRepository.findAll();
	}
	
	public List<MainTicket> getSubInfo(){
		System.out.println("===================== 서브가져옴 =====================");
		return subRegionRepository.findAll();
	}
	
	public List<MovieInfo> getAllMovies(){
		return allMovieInfoRepository.findAll();
	}
}
