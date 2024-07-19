package com.lotte.cinema.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lotte.cinema.order.utils.CreateOrderNum;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class OrderController {

	@GetMapping("/orderPage")
	public String order(HttpSession session, Model model) {
		log.info("order 로직 실행");
		
		return "store/store-detail";
	}
	
	
}
