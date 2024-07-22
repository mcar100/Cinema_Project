package com.lotte.cinema.ticket.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lotte.cinema.ticket.entity.TicketEntity.MainTicket;

@Repository
public interface SubRegionRepository extends JpaRepository<MainTicket,Integer> {

}
