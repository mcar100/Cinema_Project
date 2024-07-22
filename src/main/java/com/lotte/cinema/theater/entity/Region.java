package com.lotte.cinema.theater.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Region")
@Getter
@NoArgsConstructor
public class Region {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="region_id_generator")
	@SequenceGenerator(name="region_id_generator", sequenceName="region_id",allocationSize=1)
	private Long id;
	
	@Column(nullable=false, length=50)
	private String name;
	
	@Column(nullable=false, length=50)
	private String englishName;
}
