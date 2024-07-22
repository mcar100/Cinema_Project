package com.lotte.cinema.board.movieInfo.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.board.movieInfo.entity.MovieInfo;

public interface MovieInfoRepository extends JpaRepository<MovieInfo, Long>{
	
	// 슬라이드 정보
	List<MovieInfo> findBySlidePosterIsNotNull();
	
	// 현재상영작 탑5
	List<MovieInfo> findByReleaseDateLessThanEqualOrderByReservationDesc(LocalDate currentDate, Pageable pageable);
	
	// 상영예정작 탑5
	List<MovieInfo> findByReleaseDateAfterOrderByReservationDesc(LocalDate currentDate, Pageable pageable);
	
	// 아르떼 탑5
	List<MovieInfo> findByArteOrderByReservationDesc(String arte, Pageable pageable);
	
	// 현재상영작
	List<MovieInfo> findByReleaseDateLessThanEqualOrderByReservationDesc(LocalDate currentDate);
	
	List<MovieInfo> findByReleaseDateAfterOrderByReleaseDateAsc(LocalDate currentDate);
	
	List<MovieInfo> findByReleaseDateLessThanEqualOrderByLikesDesc(LocalDate currentDate);
	
	List<MovieInfo> findByReleaseDateLessThanEqualOrderByScoreDesc(LocalDate currentDate);
	
	List<MovieInfo> findByReleaseDateAfterOrderByReservationDesc(LocalDate currentDate);
	
	List<MovieInfo> findByReleaseDateAfterOrderByScoreDesc(LocalDate currentDate);
	
	
	
	
	
}
