package com.lotte.cinema.board.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String goNotice(HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNoticeByCategory((long) 1, 0);
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
	public String getNotice(@PathVariable(name="noticeType", required=false) Long noticeType, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			if(noticeType==null) {
				noticeType = (long) 1;
			}
			
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNoticeByCategory(noticeType, Integer.parseInt(pageNo)-1);
			
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
	
	@GetMapping("/notice/search/{noticeType}")
	public String searchNotice(@PathVariable(name="noticeType", required=false) Long noticeType, @PathVariable(name="title", required=false) String title, @PathVariable(name="content", required=false) String content, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			if(noticeType==null) {
				noticeType = (long) 1;
			}
			
			ResponseDTO<NoticeDTO> responseDTO = noticeService.searchNotice(noticeType,title,content,0);
			
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
