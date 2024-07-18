package com.lotte.cinema.board.notice.dto;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class NoticeDTO {
	private Long id;
	private String title;
	private String content;
	private String categoryName;
	private String theaterName;
	private String region;
}
