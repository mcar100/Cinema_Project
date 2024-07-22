package com.lotte.cinema.ticket.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.cinema.board.movieInfo.entity.MovieInfo;
import com.lotte.cinema.ticket.dto.TicketDto.TicketInfo;
import com.lotte.cinema.ticket.entity.CinemaRegionEntiy;
import com.lotte.cinema.ticket.entity.CinemaRegionEntiy.MainRegion;
import com.lotte.cinema.ticket.entity.TicketEntity.MainTicket;
import com.lotte.cinema.ticket.service.TicketService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TicketController {

	private final TicketService service;
	@GetMapping("/ticket")
	public ModelAndView getTicketView() {
		ModelAndView view = new ModelAndView();
		
		List<MainRegion> region = service.getTicketInfo();
		List<MainTicket> subInfos = service.getSubInfo();
		List<MovieInfo> allMovies = service.getAllMovies();
		
		
		
		List<TicketInfo> infos = new ArrayList<>();
		for(MainRegion info : region) {
			int ea = 0;
			TicketInfo a = new TicketInfo();
			a.setRegionName(info.getRegionName());
			for(int i=0; i<subInfos.size(); i++) {
				if(subInfos.get(i).getCinemaRegion().equals(info.getRegionName())) {
					ea++;
				}
			}
			a.setCinemaEA(ea);
			infos.add(a);
		}
		
		view.addObject("allMovies",allMovies);
		view.addObject("subInfos",subInfos);
		view.addObject("region",infos);
		view.setViewName("ticketing/ticket");
		
		
		return view;
	}
}
