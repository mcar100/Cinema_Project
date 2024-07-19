package com.lotte.cinema.board.faq.dto;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class PageTypeDTO {
	private String pageType;
	private String tableType;
	private String searchType;
	
	public PageTypeDTO(String pt, String tt, String st) {
		this.pageType = pt;
		this.tableType = tt;
		this.searchType = st;
	}
}
