package com.lotte.cinema.board.movieInfo.dto;

import java.time.LocalDate;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MovieDTO {
	
	@Data
	public static class SlideDTO{
		private long movieNo;
		private String slidePoster;
		private String video;
		private String explanation;
	}
	
	@Data
	public static class CurrentMovieTop5DTO{
		private long movieNo;
		private String title;
		private int playTime;
		private String poster;
		private String grade;
		private String explanation;
		private int number;
	}
	
	@Data
	public static class UpcomingMovieTop5DTO{
		private long movieNo;
		private String title;
		private int playTime;
		private String poster;
		private String grade;
		private String explanation;
		private LocalDate releaseDate;
		private String daysUntilRelease;
	}
	
	@Data
	public static class ArteMovieTop5DTO{
		private long movieNo;
		private String title;
		private int playTime;
		private String poster;
		private String grade;
		private String explanation;
		private LocalDate releaseDate;
		private int number;
		private String daysUntilRelease;
	}
	
	
	
}
