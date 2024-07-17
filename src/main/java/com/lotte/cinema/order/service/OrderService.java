package com.lotte.cinema.order.service;

import com.lotte.cinema.member.entity.Member;
import com.lotte.cinema.order.entity.Order;

public interface OrderService {
 
	// 자동 주문
	Order autoOrder(Member member);
}
