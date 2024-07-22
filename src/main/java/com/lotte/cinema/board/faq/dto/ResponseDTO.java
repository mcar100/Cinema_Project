package com.lotte.cinema.board.faq.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class ResponseDTO<T> {
	private List<T> dataList;
	private PaginationDTO pagDTO;
}
