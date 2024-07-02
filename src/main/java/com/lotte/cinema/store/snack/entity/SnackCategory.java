package com.lotte.cinema.store.snack.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Getter
@NoArgsConstructor
@ToString
@SequenceGenerator(
		name = "SNACK_CATEGORY_SEQ_GENERATOR"
	    , sequenceName = "SNACK_CATEGORY_SEQ"
	    , initialValue = 1
	    , allocationSize = 1)
public class SnackCategory {

	@Id
    @GeneratedValue(
        	strategy = GenerationType.SEQUENCE
        	, generator = "SNACK_CATEGORY_SEQ_GENERATOR"
        )
	private Long id;

	@Column(unique = true)
	private String code;

	private String name;

}
