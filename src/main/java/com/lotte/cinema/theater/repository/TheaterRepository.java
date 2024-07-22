package com.lotte.cinema.theater.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.theater.entity.Theater;

public interface TheaterRepository extends JpaRepository<Theater, Long> {
		Theater findByName(String name);
}
