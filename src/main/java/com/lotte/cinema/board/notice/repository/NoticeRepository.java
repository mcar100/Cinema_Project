package com.lotte.cinema.board.notice.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.notice.entity.NoticeBoard;
import com.lotte.cinema.board.notice.enums.NoticeCategory;

public interface NoticeRepository extends JpaRepository<NoticeBoard, Long> {
	Page<NoticeBoard> findByCategory(NoticeCategory category, Pageable pageable);
}
