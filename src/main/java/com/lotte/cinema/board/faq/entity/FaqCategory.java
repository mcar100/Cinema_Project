package com.lotte.cinema.board.faq.entity;

import javax.persistence.*;

import lombok.*;

@Entity
@Table(name="FAQ_Category")
@Getter
@NoArgsConstructor
public class FaqCategory extends BaseEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="faq_category_id_generator")
	@SequenceGenerator(name="faq_category_id_generator", sequenceName="faq_category_id",allocationSize=1)
	private Long id;
	
	@Column(nullable=false)
	private String name;

	public void setName(String name) {
		// TODO Auto-generated method stub
		this.name = name;
	}
}