package com.lotte.cinema.payment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.payment.entity.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long>{

}
