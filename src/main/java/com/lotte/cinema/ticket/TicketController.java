package com.lotte.cinema.ticket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TicketController {

	@GetMapping("hi")
	public String getHi() {
		
		return "ticketing/ticket";
	}
}
