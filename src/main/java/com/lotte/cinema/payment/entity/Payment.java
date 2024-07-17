package com.lotte.cinema.payment.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import com.lotte.cinema.payment.utils.PaymentStatus;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor
@SequenceGenerator(name = "PAYMENT_SEQ_GENERATOR", sequenceName = "PAYMENT_SEQ", initialValue = 1, allocationSize = 1)
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PAYMENT_SEQ_GENERATOR")
	private Long id;

	private Long price;
	private PaymentStatus status;

	private String paymentUid; // 결제 고유 번호

	@Builder
	public Payment(Long price, PaymentStatus status) {
		this.price = price;
		this.status = status;
	}

	public void changePaymentBySuccess(PaymentStatus status, String paymentUid) {
		this.status = status;
		this.paymentUid = paymentUid;
	}
}
