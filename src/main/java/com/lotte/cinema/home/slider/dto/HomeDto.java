package com.lotte.cinema.home.slider.dto;

import lombok.Data;

public class HomeDto {

	@Data
	public static class MainSlider{
		
		private  String  moveImgName;
		private  String  moveImgPath;
		private  String  moveVidName;
		private  String  moveVidPath;
	}
}
