package com.lotte.cinema.board.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.dto.FaqPageDTO;
import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.service.FaqService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class FaqController {

    @Autowired
	private FaqService faqService;
	
	@GetMapping("/faq")
	public String goFaq(HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			List<FaqCategory> faqCategoryList = faqService.getCategoryList();
			if(faqCategoryList == null) {
				model.addAttribute("faqCategoryList", null);
				throw new Exception("failed to get faq category list");
			}
			model.addAttribute("faqCategoryList", faqCategoryList);
		
			FaqPageDTO fpDTO = faqService.getFaqByCategoryId((long) 1, 0);
			if(fpDTO==null) {
				throw new Exception("failed to get faqPageDto");
			}
			
			model.addAttribute("faqList", fpDTO.getFaqDTOs());
			model.addAttribute("pageInfo", fpDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("faqList", null);
			model.addAttribute("pageInfo", null);
		}
		return "/customer/customer";
	}
	
	@GetMapping("/faq/{faqType}")
	public String getFaq(@PathVariable(name="faqType", required=false) Long faqType, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			if(faqType==null) {
				faqType = (long) 1;
			}
			
			FaqPageDTO fpDTO = faqService.getFaqByCategoryId(faqType, Integer.parseInt(pageNo)-1);
			if(fpDTO==null) {
				throw new Exception("failed to get faqPageDto");
			}
			
			model.addAttribute("faqList", fpDTO.getFaqDTOs());
			model.addAttribute("pageInfo", fpDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("faqList", null);
			model.addAttribute("pageInfo", null);
		}
		return "/customer/commons/collapseTable";
	}

	@GetMapping("/faq/search")
	public String searchFaq(@RequestParam(value="title", required=true) String title, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) throws Exception {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			if(title==null) {
				throw new Exception("no title");
			}
			
			FaqPageDTO fpDTO = faqService.searchFaqByTitle(title, Integer.parseInt(pageNo)-1);
			if(fpDTO==null) {
				throw new Exception("no searched data");
			}
			
			model.addAttribute("faqList", fpDTO.getFaqDTOs());
			model.addAttribute("pageInfo", fpDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("faqList", null);
			model.addAttribute("pageInfo", null);
		}
		return "/customer/commons/collapseTable";
	}
}
