package com.lotte.cinema.theater.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Theater")
@Getter
@NoArgsConstructor
public class Theater {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="theater_id_generator")
	@SequenceGenerator(name="theater_id_generator", sequenceName="theater_id",allocationSize=1)
	private Long id;
	
	@Column(nullable=false, length=50, unique=true)
	private String name;
	
	@ManyToOne
	@JoinColumn(name="region_id", nullable=false)
	private Region region;
}
