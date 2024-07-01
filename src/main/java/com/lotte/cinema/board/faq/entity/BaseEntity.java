package com.lotte.cinema.board.faq.entity;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.*;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.*;

@Getter
@Setter
@ToString
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public class BaseEntity {
	
	@Transient
	private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss:SSS");
	
	@CreatedDate
	@Column(name="created_at", updatable=false, length=23)
	private String createdAt;
	
	@LastModifiedDate
	@Column(name="updated_at", length=23)
	private String updatedAt;

	@PrePersist
	public void prePersist() {
		LocalDateTime now = LocalDateTime.now();
		this.createdAt = now.format(formatter);
		this.updatedAt = now.format(formatter);
	}

	@PreUpdate
	public void preUpdate() {
		this.updatedAt = LocalDateTime.now().format(formatter);
	}
}
