package com.lotte.cinema.order.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.lotte.cinema.member.entity.Member;
import com.lotte.cinema.payment.entity.Payment;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@Table(name = "orders")
@NoArgsConstructor
@SequenceGenerator(name = "ORDER_SEQ_GENERATOR", sequenceName = "ORDER_SEQ", initialValue = 1, allocationSize = 1)
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ORDER_SEQ_GENERATOR")
	private Long id;

	private Long price;

	private String itemName;

	private String orderUid; // 주문 번호

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "member_id")
	private Member member;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "payment_id")
	private Payment payment;

	@Builder
	public Order(Long price, String itemName, String orderUid, Member member, Payment payment) {
		this.price = price;
		this.itemName = itemName;
		this.orderUid = orderUid;
		this.member = member;
		this.payment = payment;
	}

}
