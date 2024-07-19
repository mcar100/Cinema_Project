package com.lotte.cinema.board.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lotte.cinema.board.faq.dto.FaqDTO;
import com.lotte.cinema.board.faq.dto.PageTypeDTO;
import com.lotte.cinema.board.faq.dto.ResponseDTO;
import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.service.FaqService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class FaqController {

    @Autowired
	private FaqService faqService;
	
	@GetMapping
	public String goCustomer(HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		return "/customer/commons/customer";
	}
	
	@GetMapping("/faq")
	public String goFaq(HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			List<FaqCategory> faqCategoryList = faqService.getCategoryList();
			if(faqCategoryList == null) {
				model.addAttribute("categoryList", null);
				throw new Exception("failed to get category list");
			}
			model.addAttribute("categoryList", faqCategoryList);
		
			ResponseDTO<FaqDTO> responseDTO = faqService.getFaqByCategoryId((long) 1, 0);
			if(responseDTO==null) {
				throw new Exception("failed to get ResponseDTO");
			}
			
			model.addAttribute("tableList", responseDTO.getDataList());
			model.addAttribute("pageInfo", responseDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("tableList", null);
			model.addAttribute("pageInfo", null);
		}
		finally {
			PageTypeDTO pageType = new PageTypeDTO("FAQ", "Collapse", "short");
			model.addAttribute("pageType", pageType);
		}
		return "/customer/faq";
	}
	
	@GetMapping("/faq/{faqType}")
	public String getFaq(@PathVariable(name="faqType", required=false) Long faqType, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			if(faqType==null) {
				faqType = (long) 1;
			}
			
			ResponseDTO<FaqDTO> responseDTO = faqService.getFaqByCategoryId(faqType, Integer.parseInt(pageNo)-1);
			if(responseDTO==null) {
				throw new Exception("failed to get ResponseDTO");
			}
			
			model.addAttribute("tableList", responseDTO.getDataList());
			model.addAttribute("pageInfo", responseDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("tableList", null);
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
			
			ResponseDTO<FaqDTO> responseDTO = faqService.searchFaqByTitle(title, Integer.parseInt(pageNo)-1);
			if(responseDTO==null) {
				throw new Exception("no searched data");
			}
			
			model.addAttribute("tableList", responseDTO.getDataList());
			model.addAttribute("pageInfo", responseDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("tableList", null);
			model.addAttribute("pageInfo", null);
		}
		return "/customer/commons/collapseTable";
	}
}
