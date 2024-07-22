package com.lotte.cinema.home.slider.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "movie_img")
@Getter
@Setter
public class MovieImg {
	
	 @Id
	 @Column(name = "movie_name")
	 private String movieName;


     @Column(name = "movie_img_name")
     private String movieImgName;

     @Column(name = "movie_img_path")
     private String movieImgPath;

     // Define the relationship to MovieRank
     @ManyToOne(fetch = FetchType.LAZY)
     @JoinColumn(name = "movie_name", referencedColumnName = "movie_name", insertable = false, updatable = false)
     private MovieRank movieRank;
}
