package com.lotte.cinema.home.slider.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

public class HomeEntity {

	@Entity
	@Table(name = "main_view")
	@Getter
	@Setter
	public static class MainSlider{
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private  int     moveImgNum;
		
		@Column(name = "move_img_name")
		private  String  moveImgName;
		@Column(name = "move_img_path")
		private  String  moveImgPath;
		@Column(name = "move_vid_name")
		private  String  moveVidName;
		@Column(name = "move_vid_path")
		private  String  moveVidPath;
	}
	
}
