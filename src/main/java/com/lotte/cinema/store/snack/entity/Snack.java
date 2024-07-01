package com.lotte.cinema.store.snack.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;

import com.lotte.cinema.board.faq.entity.BaseEntity;
import com.lotte.cinema.store.snack.enums.SnackCategory;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
@ToString
@Entity
@Getter
@NoArgsConstructor
@AllArgsConstructor
@SequenceGenerator(
		name = "SNACK_SEQ_GENERATOR"
	    , sequenceName = "SNACK_SEQ"
	    , initialValue = 1
	    , allocationSize = 1)
public class Snack extends BaseEntity{

	@Id
    @GeneratedValue(
        	strategy = GenerationType.SEQUENCE
        	, generator = "SNACK_SEQ_GENERATOR"
        )
	private Long snackId; // 스넥아이디
	
	@Column(unique = true)
	private String snackName; // 이름
	
	@Column(unique = true)
	private String imageUUID; 
	
	private String price; // 가격
	
	private String expiryDate; // 유효기간
	
	private String maxPurchase; // 구매제한
	
	private String items; // 구성품
	
	private String availableTheaters; // 상영가능 영화관
	
	private String guide; // 사용방법 
	
	private String notes; // 유의사항
	
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private SnackCategory category; 	
}
