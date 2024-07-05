package com.lotte.cinema.board.faq.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.faq.entity.FaqBoard;

public interface FaqRepository extends JpaRepository<FaqBoard, Long> {
	Page<FaqBoard> findByCategoryId(Long categoryId, Pageable pageable);
	Page<FaqBoard> findByTitleContaining(String title, Pageable pageable);
}
