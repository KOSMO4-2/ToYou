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
@Entity(name = "community")
public class CommunityVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int community_no;
	
	@Column(nullable = false)
	private int community_hostno;
	
	@Column(nullable = false,length = 100)
	private String community_title;
	
	@Column(nullable = false,length = 2048)	
	private String community_description;
	
	@CreationTimestamp
	private Timestamp community_createdate;
	
	@ColumnDefault("1")
	@Column(nullable = false)
	private int community_ispublic;
	
	@Column
	private String community_tag;
}
