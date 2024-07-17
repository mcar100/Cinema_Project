package com.lotte.cinema.store.snack.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@NoArgsConstructor
public class SnackRespDto {

	private Long id;
	private String snackName;
	private String imageUUID;
	private String price;
	private String expiryDate; // 유효기간
	private String maxPurchase; // 구매제한
	private String items;
	private String availableTheaters; // 상영가능 영화관
	private String guide; // 사용방법
	private String notes; // 유의사항
	private String category;
	private Long salesRate;

	@Builder
	public SnackRespDto(Long id, String snackName, String imageUUID, String price, String expiryDate,
			String maxPurchase, String items, String availableTheaters, String guide, String notes, String category,
			Long salesRate) {
		super();
		this.id = id;
		this.snackName = snackName;
		this.imageUUID = imageUUID;
		this.price = price;
		this.expiryDate = expiryDate;
		this.maxPurchase = maxPurchase;
		this.items = items;
		this.availableTheaters = availableTheaters;
		this.guide = guide;
		this.notes = notes;
		this.category = category;
		this.salesRate = salesRate;
	}

}
