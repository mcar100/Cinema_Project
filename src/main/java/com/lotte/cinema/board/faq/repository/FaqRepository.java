package com.lotte.cinema.board.faq.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.faq.entity.FaqBoard;

public interface FaqRepository extends JpaRepository<FaqBoard, Long> {
	List<FaqBoard> findByCategoryId(Long categoryId);
	List<FaqBoard> findByTitleContaining(String title);
}
