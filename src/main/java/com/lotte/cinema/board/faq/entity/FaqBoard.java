package com.lotte.cinema.board.faq.entity;

import javax.persistence.*;
import javax.persistence.Id;

import lombok.*;

@Entity
@Table(name="FAQ_Board")
@Getter
@NoArgsConstructor
public class FaqBoard extends BaseEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="faq_id_generator")
	@SequenceGenerator(name="faq_id_generator", sequenceName="faq_id",allocationSize=1)
	private Long id;
	
	@Column(nullable=false)
	private String title;
	
	@Lob
	@Column(nullable=false)
	private String content;
	
	@ManyToOne
	@JoinColumn(name="category_id", nullable=false)
	private FaqCategory category;
	
	@Column(nullable=false)
	private String status;
	
	@PrePersist
	public void prePersist() {
		if(this.status==null) {
			this.status = "PUBLIC";
		}
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public void setCategory(FaqCategory category) {
		this.category = category;
	}
}
