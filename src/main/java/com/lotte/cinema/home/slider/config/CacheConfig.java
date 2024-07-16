package com.lotte.cinema.home.slider.config;

import org.springframework.cache.CacheManager;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CacheConfig {

	@Bean
	public CacheManager cacheManager() {
        return new ConcurrentMapCacheManager("cacheData"); // cacheData라는 이름의 캐시 생성
    }
}
