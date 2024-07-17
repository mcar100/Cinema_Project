package com.lotte.cinema;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
@EnableJpaAuditing
@EnableCaching
@EnableScheduling
public class HyenaTreeApplication {	
	public static void main(String[] args) {
		SpringApplication.run(HyenaTreeApplication.class, args);
		System.out.println("Hellow");
	}
}
