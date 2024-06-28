package com.lotte.cinema.store.snack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lotte.cinema.store.snack.service.SnackService;

import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/stores")
@RequiredArgsConstructor
public class SnackController {
	
	private final SnackService snackService;
	
	@GetMapping("/snack")
	public String SnackPage(Model model) {
		
		return "/store/snack";
	}
}
