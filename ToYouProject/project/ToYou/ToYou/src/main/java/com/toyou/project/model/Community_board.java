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
public class Community_board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int community_board_no;
	
	@Column(nullable = false)
	private int community_no;
	
	@Column(nullable = false)
	private int user_no;
	
	@Column(nullable = false,length = 100)
	private String community_board_title;

	@Column(nullable = false,length = 2048)
	private String community_board_content;
	
	@ColumnDefault("0")
	@Column(nullable = false)
	private int community_board_viewcnt;
	
	@ColumnDefault("0")
	@Column(nullable = false)
	private int community_board_likecnt;
	
	@CreationTimestamp
	private Timestamp community_board_writedate;
	
	@ColumnDefault("1")
	@Column(nullable = false)
	private int community_board_ispublic;
	
	@Column
	private String community_board_imgname;
}
