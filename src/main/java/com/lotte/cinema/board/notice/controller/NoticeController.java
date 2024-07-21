package com.lotte.cinema.board.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lotte.cinema.board.faq.dto.PageTypeDTO;
import com.lotte.cinema.board.faq.dto.ResponseDTO;
import com.lotte.cinema.board.notice.dto.NoticeDTO;
import com.lotte.cinema.board.notice.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class NoticeController {
	
    @Autowired
	private NoticeService noticeService;
	
	@GetMapping("/notice")
	public String goFaq(HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNotice((long) 1, 0);
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
			PageTypeDTO pageType = new PageTypeDTO("Notice", "Board", "normal", request.getRequestURI()+"");
			model.addAttribute("pageType", pageType);
		}
		return "/customer/contents";
	}
	
	@GetMapping("/notice/{noticeType}")
	public String getNotice(@PathVariable(name="noticeType", required=false) Long noticeType, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNotice(noticeType,0);
			
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
		return "/customer/commons/boardTable";
	}

}
