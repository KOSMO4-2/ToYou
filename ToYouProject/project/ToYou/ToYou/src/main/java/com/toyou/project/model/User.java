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


@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_no;
	
	@Column(nullable = false, length = 30, unique=true)
	private String user_id;
	
	@Column(nullable = false, length = 100) // 암호화예정이라 길게 설정
	private String user_password;

	@Column(nullable = false,length = 50)
	private String user_email;
	
	@Column(nullable = false, length = 20)
	private String user_name;
	
	@Column(length = 200)
	private String user_channel_link;
	
	@Column(length = 400)
	private String user_channel_category;
	
	@ColumnDefault("0")
	@Column(nullable = false)
	private int user_iskakao;
	
	@CreationTimestamp
	private Timestamp user_joindate;
	
	@Column
	private int user_subscriber;
	
	
	@Column(length = 200)
	private String user_rolemodel_link;
	
	
	@ColumnDefault("0")
	@Column(nullable = false)
	private int user_ispayment;
	
	
}
