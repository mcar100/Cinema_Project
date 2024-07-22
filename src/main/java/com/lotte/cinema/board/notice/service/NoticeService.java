package com.lotte.cinema.board.notice.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	public ResponseDTO<NoticeDTO> getNoticeByCategory(Long categoryType, String theater, int pageNo) throws Exception{
		NoticeCategory category = null;
		if(categoryType==1) {
			category = NoticeCategory.GENERAL;
		}
		else if(categoryType==2){
			category = NoticeCategory.CINEMA;
		}
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<NoticeBoard> noticePage = null;
		
		if(theater!=null) {
			Theater t = tr.findByName(theater);
			noticePage = nr.findByTheater(t, pageable);
		}
		else {
			noticePage = nr.findByCategory(category, pageable);
		}
		
		if(noticePage==null) {
			throw new Exception("fail to find data");
		}
		
		List<NoticeBoard> noticeBoards = noticePage.getContent();
		List<NoticeDTO> noticeDTOs = new ArrayList<NoticeDTO>();
		
		int startRowNum = (pageNo) * PAGE_SIZE + 1;
		for(int i=0; i<noticeBoards.size(); i++){
			NoticeBoard origin = noticeBoards.get(i);
			NoticeDTO target = new NoticeDTO();
			BeanUtils.copyProperties(origin, target);
			if(origin.getTheater()!=null) {
				target.setTheaterName(origin.getTheater().getName());
			}
			target.setFormattedCreatedAt();
			target.setRowNum((long) (startRowNum+i));
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
	
	public ResponseDTO<NoticeDTO> searchNotice(Long categoryType, String keyword, String scope, int pageNo) throws Exception{
		NoticeCategory category = null;
		if(categoryType==(long)1) {
			category = NoticeCategory.GENERAL;
		}
		else if(categoryType==(long)2){
			category = NoticeCategory.CINEMA;
		}
		
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<NoticeBoard> noticePage = null;
		if(scope.equals("both")) {
			noticePage = nr.findByCategoryAndTitleContainingOrContentContaining(category, keyword, keyword, pageable);
		}
		else if(scope.equals("title")) {
			noticePage = nr.findByCategoryAndTitleContaining(category, keyword, pageable);
		}
		else if(scope.equals("content")) {
			noticePage = nr.findByCategoryAndContentContaining(category, keyword, pageable);
		}
		if(noticePage==null) {
			throw new Exception("fail to find data");
		}
	
		List<NoticeBoard> noticeBoards = noticePage.getContent();
		List<NoticeDTO> noticeDTOs = new ArrayList<NoticeDTO>();
		
		int startRowNum = (noticePage.getTotalPages()-pageNo-1) * PAGE_SIZE + 1;
		for(int i=0; i<noticeBoards.size(); i++){
			NoticeBoard origin = noticeBoards.get(i);
			NoticeDTO target = new NoticeDTO();
			BeanUtils.copyProperties(origin, target);
			if(origin.getTheater()!=null) {
				target.setTheaterName(origin.getTheater().getName());
			}
			target.setFormattedCreatedAt();
			target.setRowNum((long) (startRowNum-i));
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
	
	public NoticeDTO getNoticeBoardDetail(Long boardId) throws Exception{
		try {
			if(boardId==null) {
				throw new Exception("boardId Required");
			}
		
			Optional<NoticeBoard> optionalNoticeBoard = nr.findById(boardId);
			if(optionalNoticeBoard==null) {
				throw new Exception("no board found");
			}
			NoticeBoard noticeBoard = optionalNoticeBoard.get();
			NoticeDTO noticeDTO = new NoticeDTO();
			BeanUtils.copyProperties(noticeBoard, noticeDTO);
			noticeDTO.setFormattedCreatedAt();
			
			NoticeCategory noticeCategory = noticeBoard.getCategory();
			if(noticeCategory==NoticeCategory.CINEMA) {
				noticeDTO.setCategoryName("영화관 공지");
				noticeDTO.setTheaterName(noticeBoard.getTheater().getName());
			}
			else {
				noticeDTO.setCategoryName("전체 공지");
			}
			return noticeDTO;
		}
		catch(Exception e) {
			log.error(e.getMessage());
			return null;
		}
	}
	
	public Long countBoard(){
		return nr.count();
	}
}
