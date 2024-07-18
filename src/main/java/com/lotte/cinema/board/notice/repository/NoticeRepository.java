package com.lotte.cinema.board.notice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.notice.entity.NoticeBoard;

public interface NoticeRepository extends JpaRepository<NoticeBoard, Long> {

}
