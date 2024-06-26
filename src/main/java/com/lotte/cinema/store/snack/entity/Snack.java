package com.lotte.cinema.store.snack.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Snack {

	@Id
	private Long snackId; // 스넥아이디
	
	private String snackName; // 이름
	private String price; // 가격
	private String expiryDate; // 유효기간
	private String maxPurchase; // 구매제한
	private String items; // 구성품
	private String availableTheaters; // 상영가능 영화관
	private String quantity; // 수량
	private String guide; // 사용방법 
	private String notes; // 유의사항
}
