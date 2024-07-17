package com.lotte.cinema.board.notice.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.lotte.cinema.board.faq.entity.BaseEntity;
import com.lotte.cinema.board.notice.enums.BoardStatus;
import com.lotte.cinema.board.notice.enums.NoticeCategory;
import com.lotte.cinema.theater.entity.Theater;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Notice_Board")
@Getter
@NoArgsConstructor
public class NoticeBoard extends BaseEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="notice_id_generator")
	@SequenceGenerator(name="notice_id_generator", sequenceName="notice_id",allocationSize=1)
	private Long id;
	
	@Column(nullable=false, length=50)
	private String title;
	
	@Lob
	@Column(nullable=false)
	private String content;
	
	@Enumerated(EnumType.STRING)
	@Column(name="category", length=12, nullable=false)
	private NoticeCategory category;
	
	@Enumerated(EnumType.STRING)
	@Column(name="status", length=8,nullable=false)
	private BoardStatus status;
	
	@ManyToOne
	@JoinColumn(name="theater_id", nullable=true)
	private Theater theater;
	
	@Column
	private int views = 0;
	
	@PrePersist
	public void prePersist() {
		if(this.status==null) {
			this.status = BoardStatus.PUBLIC;
		}
		if(this.category==null) {
			this.category = NoticeCategory.GENERAL;
		}
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
}
