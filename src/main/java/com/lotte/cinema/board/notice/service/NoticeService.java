package com.lotte.cinema.board.notice.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.faq.dto.PaginationDTO;
import com.lotte.cinema.board.faq.dto.ResponseDTO;
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
	private final int PAGE_SIZE = 10;
	
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
	
	public ResponseDTO<NoticeDTO> getNotice(Long categoryType,int pageNo) throws Exception{
		NoticeCategory category = null;
		if(categoryType==1) {
			category = NoticeCategory.GENERAL;
		}
		else if(categoryType==2){
			category = NoticeCategory.CINEMA;
		}
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<NoticeBoard> noticePage = nr.findByCategory(category, pageable);
		
		List<NoticeBoard> noticeBoards = noticePage.getContent();
		List<NoticeDTO> noticeDTOs = new ArrayList<NoticeDTO>();
		for(NoticeBoard origin: noticeBoards){
			NoticeDTO target = new NoticeDTO();
			BeanUtils.copyProperties(origin, target);
			target.setFormattedCreatedAt();
			noticeDTOs.add(target);
		}
		
		PaginationDTO pagDTO = new PaginationDTO();
		pagDTO.setPageNo(pageNo);
		pagDTO.setPageSize(PAGE_SIZE);
		pagDTO.setLastPageNo(noticePage.getTotalPages());
		
		ResponseDTO<NoticeDTO> responseDTO = new ResponseDTO<NoticeDTO>();
		responseDTO.setDataList(noticeDTOs);
		responseDTO.setPagDTO(pagDTO);
		
		return responseDTO;
	}
	
	public ResponseDTO<NoticeDTO> getTheaterNotice(int pageNo) throws Exception{
		NoticeCategory category = NoticeCategory.CINEMA;
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<NoticeBoard> noticePage = nr.findByCategory(category, pageable);
		
		List<NoticeBoard> noticeBoards = noticePage.getContent();
		List<NoticeDTO> noticeDTOs = new ArrayList<NoticeDTO>();
		for(NoticeBoard origin: noticeBoards){
			NoticeDTO target = new NoticeDTO();
			BeanUtils.copyProperties(origin, target);
			target.setFormattedCreatedAt();
			noticeDTOs.add(target);
		}
		
		PaginationDTO pagDTO = new PaginationDTO();
		pagDTO.setPageNo(pageNo);
		pagDTO.setPageSize(PAGE_SIZE);
		pagDTO.setLastPageNo(noticePage.getTotalPages());
		
		ResponseDTO<NoticeDTO> responseDTO = new ResponseDTO<NoticeDTO>();
		responseDTO.setDataList(noticeDTOs);
		responseDTO.setPagDTO(pagDTO);
		
		return responseDTO;
	}
}
