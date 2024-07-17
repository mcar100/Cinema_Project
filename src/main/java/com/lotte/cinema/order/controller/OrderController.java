package com.lotte.cinema.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lotte.cinema.order.utils.CreateOrderNum;

@Controller
public class OrderController {

	@GetMapping("/order")
	public String order(HttpSession session, Model model) {

//		CartListDto cartListDto = (CartListDto) session.getAttribute("cartList");
//		
//		model.addAttribute("cartList", cartListDto);

		String orderNum = CreateOrderNum.createOrderNum();
		model.addAttribute("orderNum", orderNum);
		return "order/order";
	}
}
