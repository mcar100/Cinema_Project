package com.lotte.cinema.board.faq.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.dto.PaginationDTO;
import com.lotte.cinema.board.faq.dto.ResponseDTO;
import com.lotte.cinema.board.faq.entity.FaqBoard;
import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.repository.FaqCategoryRepository;
import com.lotte.cinema.board.faq.repository.FaqRepository;

@Service
public class FaqService {
	
	@Autowired
	private FaqRepository fr;
	@Autowired
	private FaqCategoryRepository fcr;
	private final int PAGE_SIZE = 10;
	
	public List<FaqCategory> getCategoryList(){
		return fcr.findAll();
	}
	
	public Long saveFaq(FaqDTO faqDTO) {
		FaqBoard faqBoard = new FaqBoard();
		faqBoard.setTitle(faqDTO.getTitle());
		faqBoard.setContent(faqDTO.getContent());
		if(faqDTO.getCategoryName()==null) {
			faqDTO.setCategoryName("영화관 이용");
		}
		FaqCategory category = fcr.findByName(faqDTO.getCategoryName());
		faqBoard.setCategory(category);
		FaqBoard savedFaqBoard = fr.save(faqBoard);
		return savedFaqBoard.getId();
	}
	
	public ResponseDTO<FaqDTO> getFaqByCategoryId(Long categoryId, int pageNo) throws Exception{
		if(categoryId==null) categoryId = (long)1;
		
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<FaqBoard> faqPage = fr.findByCategoryId(categoryId, pageable);
		
		List<FaqBoard> faqBoards = faqPage.getContent();
		List<FaqDTO> faqDTOs = new ArrayList<FaqDTO>();
		for(FaqBoard origin: faqBoards){
			FaqDTO target = new FaqDTO();
			BeanUtils.copyProperties(origin, target);
			target.setCategoryName(origin.getCategory().getName());
			faqDTOs.add(target);
		}
		
		PaginationDTO pagDTO = new PaginationDTO();
		pagDTO.setPageNo(pageNo);
		pagDTO.setPageSize(PAGE_SIZE);
		pagDTO.setLastPageNo(faqPage.getTotalPages());
		
		ResponseDTO<FaqDTO> responseDTO = new ResponseDTO<FaqDTO>();
		responseDTO.setDataList(faqDTOs);
		responseDTO.setPagDTO(pagDTO);
		
		return responseDTO;
	}
	
	public ResponseDTO<FaqDTO> searchFaqByTitle(String title, int pageNo) throws Exception{
		if(title==null) title="";
		
		Pageable pageable = PageRequest.of(pageNo, PAGE_SIZE, Sort.by("id").ascending());
		Page<FaqBoard> faqPage =  fr.findByTitleContaining(title, pageable);
		
		List<FaqBoard> faqBoards = faqPage.getContent();
		List<FaqDTO> faqDTOs = new ArrayList<FaqDTO>();
		
		for(FaqBoard origin: faqBoards){
			FaqDTO target = new FaqDTO();
			BeanUtils.copyProperties(origin, target);
			target.setCategoryName(origin.getCategory().getName());
			faqDTOs.add(target);
		}
		
		PaginationDTO pagDTO = new PaginationDTO();
		pagDTO.setPageNo(pageNo);
		pagDTO.setPageSize(PAGE_SIZE);
		pagDTO.setLastPageNo(faqPage.getTotalPages());
		
		ResponseDTO<FaqDTO> responseDTO = new ResponseDTO<FaqDTO>();
		responseDTO.setDataList(faqDTOs);
		responseDTO.setPagDTO(pagDTO);
		
		return responseDTO;
		
	}
	
}
