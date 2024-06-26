package com.lotte.cinema.board.faq.entity;

import java.time.LocalDateTime;

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
	
	@CreatedDate
	@Column(name="created_at", updatable=false)
	private LocalDateTime createdAt;
	
	@LastModifiedDate
	@Column(name="updated_at")
	private LocalDateTime updatedAt;

}
