package com.toyou.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class CategoryBeauti {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int CategoryBeautiId;
	
	@Column(length = 100)
	private String CategoryBeautiName;
	
	@Column(length = 100)
	private String CategoryBeautiSubscribe;
}
