package com.lotte.cinema.home.slider.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

//	private final HomeRepository homeRepository;
//	private final SubSliderRepository subSliderRepository;
//	private final CacheManager cacheManager;
//	
//	public List<HomeEntity.MainSlider> getMainSliderInfo() {
//		System.out.println("===================== 메인가져옴 =====================");
//		return homeRepository.findAll();
//	}
//	
////	// 5분단위 조회
////	private boolean checkTime() {
////		
////		// 현재 시간
////		LocalTime now = LocalTime.now();
////		int minute = now.getMinute();
////		if( (minute%5) == 0 ) {
////			return false;
////		}
////		return true;
////	}
//	
//	
//	// 조회된 리스트(캐시에 저장된 데이터)  반환
//	// 캐시객체가 없을 경우도 처리하면 좋을것 같긴한데...
//	public List<MovieImgDto> getSubImgInfo(){
//		 System.out.println("지점1");
//		 Cache cache = cacheManager.getCache("cacheData");
//		 
//		 if(cache.get("rankCache") != null) {
//			 System.out.println("지점2");
//			 return (List<MovieImgDto>) cache.get("rankCache");
//		 }else {
//			 System.out.println("지점3");
//			 cache.put("rankCache", getSubImg());
//			 return getSubImg();
//		 }
//		
//	}
//	
//	
////	@Cacheable(value="rankCache")
//	@Scheduled(cron = "0 */1 * * * *") // 매 5분마다 실행
//	public void saveCacheImg(){
//		System.out.println("!!!!!!!!!!  스케쥴러 실행됨  !!!!!!!!!!");
//		
//		// 캐시에 저장
//        Cache cache = cacheManager.getCache("cacheData");
//        if (cache != null) {
//        	System.out.println("지점4");
//            cache.put("rankCache", getSubImg());
//            System.out.println("데이터가 캐시에 저장 되었습니다.");
//        } else {
//        	System.out.println("지점5");
//            System.out.println("캐시객체를 찾을 수 없습니다.");
//        }
//	}
//	
//	
//	@Transactional
//	public List<MovieImgDto> getSubImg(){
//		System.out.println("지점6");
////		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountAsc();
//		
//		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
//		List<MovieImgDto> dtoList = new ArrayList<>();
//		
//		int startNum = 1;
//		
//		for(MovieImg Imgs : ImgList) {
//			MovieImgDto dto = new MovieImgDto();
//			MovieRankDto rankDto = new MovieRankDto();
//			
//			dto.setMovieImgName(Imgs.getMovieImgName());
//			System.out.println("지점7");
//			dto.setMovieImgPath(Imgs.getMovieImgPath());
//			System.out.println("지점8");
//			dto.setMovieName(Imgs.getMovieName());
//			System.out.println("지점9");
//			rankDto.setMovieCount(Imgs.getMovieRank().getMovieCount());
//			System.out.println("지점10");
//			rankDto.setMovieStar(Imgs.getMovieRank().getMovieStar());
//			System.out.println("지점11");
//			rankDto.setMovieGrade(Imgs.getMovieRank().getMovieGrade());
//			System.out.println("지점12");
//			rankDto.setMovieRank(startNum++);
//			System.out.println("지점13");
//			dto.setRankDto(rankDto);
//			System.out.println("지점14");
//			dtoList.add(dto);
//			System.out.println("지점15");
//		}
//		
////		return subSliderRepository.findByMovieRankIsNotNull();
////		return subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
//		return dtoList;	
//	}
	private final HomeRepository homeRepository;
	private final SubSliderRepository subSliderRepository;
	private final CacheManager cacheManager;
	
	public List<HomeEntity.MainSlider> getMainSliderInfo() {
		System.out.println("===================== 메인가져옴 =====================");
		return homeRepository.findAll();
	}
	
	
	// 5분 단위 처리 (분 설정) 
	private String customRound(int minute) {
		
		int firstNumber = minute % 10;
		int secondNumber = (minute / 10) * 10;

		if(firstNumber < 5) {
			firstNumber = 0;
		}else {
			firstNumber = 5;
		}
		String sum = String.valueOf(firstNumber + secondNumber);
		if(sum.length() < 2) {
			sum = "0"+sum;
		}
		return sum;
	}
	
	
	
	// 시간 나타내기
	public String checkTime() {
		LocalDate nowDay = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM.dd");
		String formatedNow = nowDay.format(formatter);
		
		
		// 현재 시간
		LocalTime now = LocalTime.now();
		DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH");
		String hour = now.format(formatter2);
		
		int minute = now.getMinute();
		String afterMinute = customRound(minute);
		
		return formatedNow + " " + hour + ":" + afterMinute; 
	}
	
	public List<MovieImgDto> getSubImgInfo(){
		Cache cache = cacheManager.getCache("cacheData");
		
		if (cache != null && cache.get("rankCache") != null) {
			return (List<MovieImgDto>) cache.get("rankCache").get();
		} else {
			List<MovieImgDto> imgDtos = getSubImg();
			if (cache != null) {
				cache.put("rankCache", imgDtos);
			}
			return imgDtos;
		}
	}
	
	@Scheduled(cron = "0 */5 * * * *") // 매 1분마다 실행
	@Transactional
	public void saveCacheImg() {
		System.out.println("!!!!!!!!!!  스케쥴러 실행됨  !!!!!!!!!!");
		
		Cache cache = cacheManager.getCache("cacheData");
		if (cache != null) {
			List<MovieImgDto> imgDtos = getSubImg();
			cache.put("rankCache", imgDtos);
			System.out.println("데이터가 캐시에 저장 되었습니다.");
		} else {
			System.out.println("캐시객체를 찾을 수 없습니다.");
		}
	}
	
	@Transactional
	public List<MovieImgDto> getSubImg() {
		
		List<MovieImg> ImgList = subSliderRepository.findByMovieRankIsNotNullOrderByMovieRankMovieCountDesc();
		List<MovieImgDto> dtoList = new ArrayList<>();
		
		int startNum = 1;
		
		for (MovieImg Imgs : ImgList) {
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
		
		return dtoList;	
	}
}
