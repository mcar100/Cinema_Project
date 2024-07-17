package com.lotte.cinema.admin.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.service.FaqService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin/customer")
public class CustomerController {
	
	@Autowired
	private FaqService faqService;
	 
		@GetMapping("/faq")
		public String goFaqWrite(HttpServletRequest request, Model model) {
			log.info(request.getMethod()+" "+request.getRequestURI()+"");
			try {
				List<FaqCategory> faqCategoryList = faqService.getCategoryList();
				if(faqCategoryList == null) {
					throw new Exception("failed to get faq category list");
				}
				
				model.addAttribute("faqCategoryList", faqCategoryList);
			}
			
			catch(Exception e) {
				log.error(e.getMessage());
				model.addAttribute("faqCategoryList", null);
			}
			return "/admin/customer/faqWrite";
		}
		
		@PostMapping("/faqWrite")
		public ResponseEntity<Boolean> writeFaq(@RequestBody FaqDTO faqDTO, HttpServletRequest request) throws Exception {
			log.info(request.getMethod()+" "+request.getRequestURI()+" data: "+faqDTO.getCategoryName()+" "+faqDTO.getTitle()+" "+faqDTO.getContent());
			try {
				if(faqDTO.getTitle()==null||faqDTO.getContent()==null) {
					throw new Exception("내용을 입력해주세요.");
				}
				
				long result = faqService.saveFaq(faqDTO);
				if(result==0) {
					throw new Exception("저장 결과 실패");
				}
				return ResponseEntity.ok().body(true);	
			}
			catch(Exception e) {
				log.error("failed to insert faq"+e.getMessage());
				return ResponseEntity.ok().body(false);	
			}
		}
		
		@GetMapping("/notice")
		public String goNoticeWrite(HttpServletRequest request, Model model) {
			log.info(request.getMethod()+" "+request.getRequestURI()+"");
			try {
				
			}
			
			catch(Exception e) {
				log.error(e.getMessage());

			}
			return "/admin/customer/noticeWrite";
		}
}
