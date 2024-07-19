package com.lotte.cinema.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.order.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
