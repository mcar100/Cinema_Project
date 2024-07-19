package com.lotte.cinema.order.service;

import org.springframework.stereotype.Service;

import com.lotte.cinema.order.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService{

	private final OrderRepository orderRepository; 

}
