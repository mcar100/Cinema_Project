package com.lotte.cinema.board.faq.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.lotte.cinema.board.faq.entity.FaqCategory;

public interface FaqCategoryRepository extends JpaRepository<FaqCategory, Long> {

	FaqCategory findByName(String name);
	
}
