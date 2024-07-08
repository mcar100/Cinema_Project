package com.lotte.cinema.home.slider.dto;

import java.util.Date;

import lombok.Data;

public class HomeDto {

	@Data
	public static class MainSlider{
		
		private  String  moveImgName;
		private  String  moveImgPath;
		private  String  moveVidName;
		private  String  moveVidPath;
	}
	
	@Data
	public static class MovieRankDto{
		
		private String movieName;
		private int movieCount;
		private Date movieStartDay;
		private String movieEnd;
		private int movieStar;
	}
	
	@Data
	public static class MovieImgDto{
		
		private String movieImgName;
		private String movieImgPath;
		
	}
}
