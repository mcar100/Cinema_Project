package com.lotte.cinema.board.notice.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class NoticeDTO {
	private Long rowNum;
	private Long id;
	private String title;
	private String content;
	private String categoryName;
	private String theaterName;
	private String region;
	private String createdAt;
	
	public void setFormattedCreatedAt() {
		if(this.createdAt==null) {
			return;
		}
		String originDate = this.createdAt;
	      // 입력 형식 정의
        SimpleDateFormat inputFormat = new SimpleDateFormat("yy. M. d. a hh:mm", Locale.KOREAN);
        
        // 출력 형식 정의
        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
        	Date inputDate = inputFormat.parse(originDate);
        	String outputDate = outputFormat.format(inputDate);
        	this.createdAt = outputDate;
        }
        catch(ParseException e) {
        	e.printStackTrace();
        }
	}
}
