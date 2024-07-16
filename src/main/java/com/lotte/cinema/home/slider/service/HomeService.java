package com.lotte.cinema.home.slider.service;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.lotte.cinema.home.slider.dto.HomeDto.MovieImgDto;
import com.lotte.cinema.home.slider.dto.HomeDto.MovieRankDto;
import com.lotte.cinema.home.slider.entity.HomeEntity;
import com.lotte.cinema.home.slider.entity.MovieImg;
import com.lotte.cinema.home.slider.repository.HomeRepository;
import com.lotte.cinema.home.slider.repository.SubSliderRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class HomeService {

	private final HomeRepository homeRepository;
	private final SubSliderRepository subSliderRepository;
	private final CacheManager cacheManager;
	
	public List<HomeEntity.MainSlider> getMainSliderInfo() {
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 메인가져옴&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		return homeRepository.findAll();
	}
	
//	// 5분단위 조회
//	private boolean checkTime() {
//		
//		// 현재 시간
//		LocalTime now = LocalTime.now();
//		int minute = now.getMinute();
//		if( (minute%5) == 0 ) {
//			return false;
//		}
//		return true;
//	}
	
	
	
//	public List<MovieImgDto> getSubImg(){
//		Cache cache = cacheManager.getCache("rankCache");
//		 	if ((cache == null) || ) {
//		        // 데이터베이스에서 직접 조회
//		        System.out.println("----------- 데이터베이스에서 조회합니다 -----------");
//		        return searchDB();
//		    } else {
//		        // 캐시를 사용반환
//		        System.out.println("Fetching from cache");
//		        return cachedData();
//		    }
//	}
//	
	
//	private List<MovieImgDto> getSubImg(){
		
//		Cache cache = cacheManager.getCache("rankCache");
//	    if (cache != null && cache.get("getSubImg") != null) {
//	        return  (List<MovieImgDto>)cache.get("getSubImg").get();
//	    }
//	    return new ArrayList<>();
//	}
	
	
	@Cacheable(value="rankCache")
	@Scheduled(cron = "0 */5 * * * *") // 매 5분마다 실행
	private List<MovieImgDto> getSubImg(){
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 캐시값임&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
//		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountAsc();
		
		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		List<MovieImgDto> dtoList = new ArrayList<>();
		
		int startNum = 1;
		
		for(MovieImg Imgs : ImgList) {
			MovieImgDto dto = new MovieImgDto();
			MovieRankDto rankDto = new MovieRankDto();
			
			dto.setMovieImgName(Imgs.getMovieImgName());
			dto.setMovieImgPath(Imgs.getMovieImgPath());
			dto.setMovieName(Imgs.getMovieName());
			rankDto.setMovieCount(Imgs.getMovieRank().getMovieCount());
			rankDto.setMovieStar(Imgs.getMovieRank().getMovieStar());
			rankDto.setMovieGrade(Imgs.getMovieRank().getMovieGrade());
			rankDto.setMovieRank(startNum++);
			dto.setRankDto(rankDto);
			dtoList.add(dto);
		}
		
		// 캐시에 저장
        Cache cache = cacheManager.getCache("cacheData");
        if (cache != null) {
            cache.put("dataList", dtoList);
            System.out.println("Data cached successfully.");
        } else {
            System.out.println("Cache 'cacheData' not found.");
        }
//		return subSliderRepository.findByMovieRankIsNotNull();
//		return subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		return dtoList;		
	}
	
}
