package com.toyou.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Community_userinfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int community_userinfo_no;
	
	@Column(nullable = false)
	private int community_no;
	
	@Column(nullable = false)
	private int user_no;

	@ColumnDefault("0")
	@Column(nullable = false)
	private int community_userinfo_authority;
	
	
	@CreationTimestamp
	private Timestamp community_userinfo_joindate;
}
