package com.lotte.cinema.store.snack.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.store.snack.entity.Snack;

public interface SnackRepository extends JpaRepository<Snack, Long> {
	
	List<Snack> findAllList();
} 
