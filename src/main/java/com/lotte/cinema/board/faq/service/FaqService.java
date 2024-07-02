package com.lotte.cinema.board.faq.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.entity.FaqBoard;
import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.repository.FaqCategoryRepository;
import com.lotte.cinema.board.faq.repository.FaqRepository;

@Service
public class FaqService {
	
	private final FaqRepository fr;
	private final FaqCategoryRepository fcr;
	
	@Autowired
	public FaqService(FaqRepository fr, FaqCategoryRepository fcr) {
		this.fr = fr;
		this.fcr = fcr;
		
	}
	
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
	
	public List<FaqDTO> getFaqByCategoryId(Long categoryId) throws Exception{
		List<FaqBoard> faqBoards = fr.findByCategoryId(categoryId);
		List<FaqDTO> faqDTOs = new ArrayList<FaqDTO>();
		FaqCategory category = fcr.findById(categoryId).orElseThrow(()-> new Exception("category not found"));
		
		for(FaqBoard origin: faqBoards){
			FaqDTO target = new FaqDTO();
			BeanUtils.copyProperties(origin, target);
			target.setCategoryName(category.getName());
			faqDTOs.add(target);
		}
		
		return faqDTOs;
	}
	
}
