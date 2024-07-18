package com.lotte.cinema.board.notice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.notice.dto.NoticeDTO;
import com.lotte.cinema.board.notice.entity.NoticeBoard;
import com.lotte.cinema.board.notice.enums.NoticeCategory;
import com.lotte.cinema.board.notice.repository.NoticeRepository;
import com.lotte.cinema.theater.entity.Theater;
import com.lotte.cinema.theater.repository.TheaterRepository;

@Service
public class NoticeService {
	@Autowired
	private NoticeRepository nr;
	@Autowired
	private TheaterRepository tr;
	
	public Long saveNotice(NoticeDTO noticeDTO) throws Exception{
		NoticeCategory category = NoticeCategory.valueOf(noticeDTO.getCategoryName().toUpperCase());
		NoticeBoard noticeBoard = new NoticeBoard(noticeDTO, category);
		
		if(category==NoticeCategory.CINEMA) {
			Theater theater = tr.findByName(noticeDTO.getTheaterName());
			if(theater==null) {
				throw new Exception("조회된 영화관이 없습니다.");
			}
			noticeBoard.setTheater(theater);
		}

		NoticeBoard savedNoticeBoard = nr.save(noticeBoard);
		
		return savedNoticeBoard.getId();
	}
}
