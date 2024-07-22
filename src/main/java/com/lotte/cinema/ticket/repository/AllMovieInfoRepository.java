package com.lotte.cinema.ticket.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lotte.cinema.board.movieInfo.entity.MovieInfo;

@Repository
public interface AllMovieInfoRepository extends JpaRepository<MovieInfo, Long> {
	
}
