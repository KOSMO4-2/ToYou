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
@Entity(name = "admin")
public class AdminVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int admin_no;
	
	@Column(nullable = false, length = 30, unique=true)
	private String admin_id;
	
	@Column(nullable = false, length = 100) // 암호화예정이라 길게 설정
	private String admin_password;
	
	@CreationTimestamp
	private Timestamp admin_lastdate;
	
	@ColumnDefault("1")
	@Column(nullable = false)
	private int admin_level;
	
	@ColumnDefault("1")
	@Column(nullable = false)
	private int admin_available;
}
