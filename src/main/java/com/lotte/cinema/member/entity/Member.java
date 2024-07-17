package com.lotte.cinema.member.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor
@SequenceGenerator(name = "MEMEER_SEQ_GENERATOR", sequenceName = "ORDER_SEQ", initialValue = 1, allocationSize = 1)
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MEMEER_SEQ_GENERATOR")
	private Long id;

	private String username;

	private String email;

	private String address;

	@Builder
	public Member(String username, String email, String address) {
		this.username = username;
		this.email = email;
		this.address = address;
	}
}
