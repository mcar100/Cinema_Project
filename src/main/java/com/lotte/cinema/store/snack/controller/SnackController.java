package com.lotte.cinema.store.snack.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;

import com.lotte.cinema.store.snack.dto.SnackRespDto;
import com.lotte.cinema.store.snack.service.SnackService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/stores")
@RequiredArgsConstructor
public class SnackController {

	private final SnackService snackService;

	@GetMapping("/snack")
	public String SnackPage(Model model) {
		log.info("SnackPage() 로직 실행");

		List<SnackRespDto> snackList = snackService.findAll();
		model.addAttribute("snackList", snackList);

		return "/store/snack";
	}

// stores/snack/detail?snackId=15 
	@GetMapping("/snack/detail")
	public String SnackDetailPage(@RequestParam("snackId") String snackId, Model model) {
		log.info("SnackDetailPage() 로직 실행 snackId = {}", snackId);
		return "/store/store-detail";
	}
}
