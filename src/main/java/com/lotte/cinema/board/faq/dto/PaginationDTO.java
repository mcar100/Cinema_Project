package com.lotte.cinema.board.faq.dto;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class PaginationDTO {
	private int pageSize;
	private int pageNo;
	private int lastPageNo;
}
