package com.lotte.cinema.home.slider.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="movie_rank")
@Getter
@Setter
public class MovieRank {

	@Id
	@Column(name="movie_name")
	private String movieName;
	
	@Column(name="movie_count")
	private double movieCount;
	
	@Column(name="movie_start_day")
	@Temporal(TemporalType.DATE)
	private Date movieStartDay;
	
	@Column(name = "movie_end")
    private String movieEnd;

    @Column(name = "move_star")
    private double movieStar;
    
    @Column(name = "movie_grade")
    private String movieGrade;
	
}
