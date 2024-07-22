package com.lotte.cinema.board.faq.dto;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class PageTypeDTO {
	private String pageType;
	private String tableType;
	private String searchType;
	private String requestUrl;
	
	public PageTypeDTO(String pt, String tt, String st, String ru) {
		this.pageType = pt;
		this.tableType = tt;
		this.searchType = st;
		this.requestUrl = ru;
	}
}
