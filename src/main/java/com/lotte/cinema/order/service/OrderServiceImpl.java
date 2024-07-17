package com.lotte.cinema.order.service;

import java.util.UUID;

import org.springframework.stereotype.Service;

import com.lotte.cinema.member.entity.Member;
import com.lotte.cinema.order.entity.Order;
import com.lotte.cinema.order.repository.OrderRepository;
import com.lotte.cinema.payment.entity.Payment;
import com.lotte.cinema.payment.repository.PaymentRepository;
import com.lotte.cinema.payment.utils.PaymentStatus;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService{

	private final OrderRepository orderRepository; 
	private final PaymentRepository paymentRepository;
	
	@Override
	public Order autoOrder(Member member) {
	
		  // 임시 결제내역 생성
        Payment payment = Payment.builder()
                .price(1000L)
                .status(PaymentStatus.READY)
                .build();

        paymentRepository.save(payment);

        // 주문 생성
        Order order = Order.builder()
                .member(member)
                .price(1000L)
                .itemName("1달러샵 상품")
                .orderUid(UUID.randomUUID().toString())
                .payment(payment)
                .build();

        return orderRepository.save(order);
	}
}
