package com.lotte.cinema.home.slider.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Login {

	@Id
	private String userId;
	private String password;
	private String userName;
	private String userRole;
	@CreationTimestamp
	private Timestamp regDt;
}
