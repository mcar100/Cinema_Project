package com.lotte.cinema.board.movieInfo.service;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.lotte.cinema.board.movieInfo.dto.MovieDTO.ArteMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.CurrentMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.MovieAllDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.SlideDTO;
import com.lotte.cinema.board.movieInfo.dto.MovieDTO.UpcomingMovieTop5DTO;
import com.lotte.cinema.board.movieInfo.entity.MovieInfo;
import com.lotte.cinema.board.movieInfo.repository.MovieInfoRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MovieInfoServiceImpl implements MovieInfoService{
	
	private final MovieInfoRepository mf;
	
	// 슬라이드 정보
	@Override
	public List<SlideDTO> getSlideMovie(){
		
		List<MovieInfo> movieInfo = mf.findBySlidePosterIsNotNull();
		List<SlideDTO> slideDTO = new ArrayList<SlideDTO>();
		
		for(MovieInfo origin: movieInfo) {
			SlideDTO target = new SlideDTO();
			BeanUtils.copyProperties(origin, target);
			slideDTO.add(target);
		}
		
		return slideDTO;
	}
	
	// 현재상영작 탑5
	@Override
	public List<CurrentMovieTop5DTO> getCurrentMovieFive(){
		
		LocalDate currentDate = LocalDate.now();
        Pageable pageable = PageRequest.of(0, 5);
        
        List<MovieInfo> movieInfo = mf.findByReleaseDateLessThanEqualOrderByReservationDesc(currentDate, pageable);
		List<CurrentMovieTop5DTO> currentMovieTop5DTO = new ArrayList<>();
		 
		int startNumber = 1;
		for(MovieInfo origin: movieInfo) {
			CurrentMovieTop5DTO target = new CurrentMovieTop5DTO();
				BeanUtils.copyProperties(origin, target);
				currentMovieTop5DTO.add(target);
				target.setNumber(startNumber++);
		}
			
		return currentMovieTop5DTO;
		
	}
	
	// 상영예정작 탑5
	@Override
	public List<UpcomingMovieTop5DTO> getUpcomingMovieFive(){
		
		LocalDate currentDate = LocalDate.now();
        Pageable pageable = PageRequest.of(0, 5);
        
        List<MovieInfo> movieInfo = mf.findByReleaseDateAfterOrderByReservationDesc(currentDate, pageable);      
        List<UpcomingMovieTop5DTO> upcomingMovieTop5DTO = new ArrayList<>();
		 
		for(MovieInfo origin: movieInfo) {
			UpcomingMovieTop5DTO target = new UpcomingMovieTop5DTO();
				BeanUtils.copyProperties(origin, target);
				LocalDate releaseDate = origin.getReleaseDate();
				long daysUntilRelease = ChronoUnit.DAYS.between(currentDate, releaseDate);
				target.setDaysUntilRelease("D-" + daysUntilRelease);
				upcomingMovieTop5DTO.add(target);
		}
			
		return upcomingMovieTop5DTO;
		
	}
	
	// 아르떼 탑5
	@Override
	public List<ArteMovieTop5DTO> getArteMovieFive(){
		
		LocalDate currentDate = LocalDate.now();
		Pageable pageable = PageRequest.of(0, 5);
		String arte = "Y";
		
		List<MovieInfo> movieInfo = mf.findByArteOrderByReservationDesc(arte, pageable);
		List<ArteMovieTop5DTO> arteMovieTop5DTO = new ArrayList<>();
		
		int startNumber = 1;
		for(MovieInfo origin: movieInfo) {
			ArteMovieTop5DTO target = new ArteMovieTop5DTO();
				BeanUtils.copyProperties(origin, target);
				LocalDate releaseDate = origin.getReleaseDate();
				long daysUntilRelease = ChronoUnit.DAYS.between(currentDate, releaseDate);
				 if (daysUntilRelease < 0) {
		                target.setDaysUntilRelease("");
		            } else {
		                target.setDaysUntilRelease("D-" + daysUntilRelease);
		            }
				arteMovieTop5DTO.add(target);
				target.setNumber(startNumber++);
		}
			
		return arteMovieTop5DTO;
		
	}
	
	// 모든영화정보
	@Override
	public List<MovieAllDTO> getMovieAll(){
		
		LocalDate currentDate = LocalDate.now();
	    
	    List<MovieInfo> movieInfo = mf.findByReleaseDateLessThanEqualOrderByReservationDesc(currentDate);
	    List<MovieAllDTO> movieAllDTO = new ArrayList<>();
	     
	    int startNumber = 1;
	    for (MovieInfo origin : movieInfo) {
	    	MovieAllDTO target = new MovieAllDTO();
	        BeanUtils.copyProperties(origin, target);
	        LocalDate releaseDate = origin.getReleaseDate();
			long daysUntilRelease = ChronoUnit.DAYS.between(currentDate, releaseDate);
			 if (daysUntilRelease < 0) {
	                target.setDaysUntilRelease("");
	            } else {
	                target.setDaysUntilRelease("D-" + daysUntilRelease);
	            }
	        movieAllDTO.add(target);
	        target.setNumber(startNumber++);
	    }
	        
	    return movieAllDTO;
		
	}
	
	@Override
	public List<MovieAllDTO> getMovieAllByFlag(int flag) {
		
		LocalDate currentDate = LocalDate.now();
        List<MovieInfo> movieInfo;
        
        switch (flag) {
        	case 1:
	        	movieInfo = mf.findByReleaseDateLessThanEqualOrderByReservationDesc(currentDate);
	        	break;
	        case 6:
	        	movieInfo = mf.findByReleaseDateAfterOrderByReleaseDateAsc(currentDate);
	        	break;
	        case 2:
	        	movieInfo = mf.findByReleaseDateLessThanEqualOrderByReservationDesc(currentDate);
	        	break;
	        case 3:
	        	movieInfo = mf.findByReleaseDateLessThanEqualOrderByLikesDesc(currentDate);
	        	break;
	        case 4:
	        	movieInfo = mf.findByReleaseDateLessThanEqualOrderByScoreDesc(currentDate);
	        	break;
	        case 7:
	        	movieInfo = mf.findByReleaseDateAfterOrderByReleaseDateAsc(currentDate);
	        	break;
	        case 8:
	        	movieInfo = mf.findByReleaseDateAfterOrderByReservationDesc(currentDate);
	        	break;
	        case 9:
	        	movieInfo = mf.findByReleaseDateAfterOrderByScoreDesc(currentDate);
	        	break;
	        default:	
	        	throw new IllegalArgumentException("Invalid movie type: " + flag);
	        }

        return convertToMovieAllDTO(movieInfo);
    }
	
	
	  public List<MovieAllDTO> convertToMovieAllDTO(List<MovieInfo> movieInfo){
	  
	  List<MovieAllDTO> movieAllDTO = new ArrayList<>();
	  LocalDate currentDate = LocalDate.now();
	  
	  int startNumber = 1;
	    for (MovieInfo origin : movieInfo) {
	    	MovieAllDTO target = new MovieAllDTO();
	        BeanUtils.copyProperties(origin, target);
	        LocalDate releaseDate = origin.getReleaseDate();
			long daysUntilRelease = ChronoUnit.DAYS.between(currentDate, releaseDate);
			 if (daysUntilRelease < 0) {
	                target.setDaysUntilRelease("");
	            } else {
	                target.setDaysUntilRelease("D-" + daysUntilRelease);
	            }
	        movieAllDTO.add(target);
	        target.setNumber(startNumber++);
	    }
	        
	    return movieAllDTO;
	  }
	
	
}
