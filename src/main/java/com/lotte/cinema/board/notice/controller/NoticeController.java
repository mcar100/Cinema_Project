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
import com.lotte.cinema.theater.dto.TheaterGroupDTO;
import com.lotte.cinema.theater.service.TheaterService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class NoticeController {
	
    @Autowired
	private NoticeService noticeService;
    @Autowired
    private TheaterService theaterService;
	
	@GetMapping("/notice")
	public String goNotice(HttpServletRequest request, Model model) throws Exception {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNoticeByCategory((long) 1, null, 0);
			if(responseDTO==null) {
				throw new Exception("failed to get ResponseDTO");
			}
			
			TheaterGroupDTO theaterGroupList = theaterService.getRegionAll();
			if(theaterGroupList == null) {
				throw new Exception("failed to get theater group list");
			}
			model.addAttribute("theaterGroupList", theaterGroupList.getTheaterGroup());
			
			model.addAttribute("tableList", responseDTO.getDataList());
			model.addAttribute("pageInfo", responseDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("tableList", null);
			model.addAttribute("pageInfo", null);
			model.addAttribute("theaterGroupList", null);
		}
		finally {
			PageTypeDTO pageType = new PageTypeDTO("Notice", "Board", "normal", request.getRequestURI()+"");
			model.addAttribute("pageType", pageType);
		}
		return "/customer/contents";
	}
	
	@GetMapping("/notice/{noticeType}")
	public String getNotice(@PathVariable(name="noticeType", required=false) Long noticeType, @RequestParam(value="theater", required=false) String theater,@RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {
			if(noticeType==null) {
				noticeType = (long) 1;
			}
			
			ResponseDTO<NoticeDTO> responseDTO = noticeService.getNoticeByCategory(noticeType, theater,Integer.parseInt(pageNo)-1);
			
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
	public String searchNotice(@PathVariable(name="noticeType", required=false) Long noticeType,@RequestParam(name="searchKeyword", required=false) String keyword, @RequestParam(name="scope", required=false) String scope, @RequestParam(value="pageNo", required=true, defaultValue="1") String pageNo, HttpServletRequest request, Model model) {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			ResponseDTO<NoticeDTO> responseDTO = noticeService.searchNotice(noticeType,keyword, scope,0);
			
			if(responseDTO==null) {
				throw new Exception("failed to get ResponseDTO");
			}
			
			model.addAttribute("tableList", responseDTO.getDataList());
			model.addAttribute("pageInfo", responseDTO.getPagDTO());
		}
		catch(Exception e) {
			log.error(e.getMessage()+""+request.getRequestURI());
			model.addAttribute("tableList", null);
			model.addAttribute("pageInfo", null);
		}
		return "/customer/commons/boardTable";
	}
	
	@GetMapping("/noticeDetail/{boardId}")
	public String goNoticeDetail(@PathVariable(name="boardId", required=true) Long boardId, HttpServletRequest request, Model model) throws Exception {
		log.info(request.getMethod()+" "+request.getRequestURI()+"");
		try {  
			NoticeDTO noticeDTO = noticeService.getNoticeBoardDetail(boardId);
			if(noticeDTO==null) {
				throw new Exception("failed to get noticeDTO");
			}
			
			if(boardId>1) {
				NoticeDTO prevDTO = noticeService.getNoticeBoardDetail(boardId-1);
				model.addAttribute("prevBoard", prevDTO);
			}
			else {
				model.addAttribute("prevBoard", null);
			}
			
			if(boardId<noticeService.countBoard()) {
				NoticeDTO nextDTO = noticeService.getNoticeBoardDetail(boardId+1);
				model.addAttribute("nextBoard", nextDTO);
			}
			else {
				model.addAttribute("nextBoard", null);
			}
			model.addAttribute("boardDetail",noticeDTO);
			
		}
		catch(Exception e) {
			log.error(e.getMessage());
			model.addAttribute("boardDetail",null);
		}
		return "/customer/commons/boardDetail";
	}

}
