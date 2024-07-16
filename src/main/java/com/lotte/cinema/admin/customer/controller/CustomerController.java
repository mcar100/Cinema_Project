package com.lotte.cinema.admin.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.service.FaqService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private FaqService faqService;
	 
		@GetMapping("/faqWrite")
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
		
		@GetMapping("/noticeWrite")
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
