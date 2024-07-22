package com.lotte.cinema.board.notice.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.notice.entity.NoticeBoard;
import com.lotte.cinema.board.notice.enums.NoticeCategory;
import com.lotte.cinema.theater.entity.Theater;

public interface NoticeRepository extends JpaRepository<NoticeBoard, Long> {
	Page<NoticeBoard> findByTheater(Theater theater, Pageable pageable);
	Page<NoticeBoard> findByCategory(NoticeCategory category, Pageable pageable);
	Page<NoticeBoard> findByCategoryAndTitleContaining(NoticeCategory category, String title, Pageable pageable);
	Page<NoticeBoard> findByCategoryAndContentContaining(NoticeCategory category, String content, Pageable pageable);
	Page<NoticeBoard> findByCategoryAndTitleContainingOrContentContaining(NoticeCategory category, String title, String content, Pageable pageable);
}
