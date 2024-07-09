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
		private int     movieRank;
		private String  movieName;
		private double  movieCount;
		private Date    movieStartDay;
		private String  movieEnd;
		private double  movieStar;
		private String  movieGrade;
	}
	
	
	@Data
	public static class MovieImgDto {
		private MovieRankDto rankDto;
		private String       movieName;
		private String       movieImgName;
		private String       movieImgPath;
	}
}
