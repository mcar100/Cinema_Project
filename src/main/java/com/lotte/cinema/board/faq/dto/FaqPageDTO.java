package com.lotte.cinema.board.faq.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class FaqPageDTO {
	private List<FaqDTO> faqDTOs;
	private PaginationDTO pagDTO;
}
