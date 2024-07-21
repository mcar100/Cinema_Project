package com.lotte.cinema.ticket.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lotte.cinema.ticket.entity.CinemaRegionEntiy.MainRegion;

@Repository
public interface TicketRegionRepository extends JpaRepository<MainRegion,Integer>{
		
}
