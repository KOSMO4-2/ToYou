package com.toyou.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity(name = "community_board_reply")
public class Community_board_replyVO {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int community_board_reply_no;
	
	@Column(nullable = false)
	public int community_board_no;
	
	@Column(nullable = false)
	public int user_no;
	
	@Column(nullable = false,length = 2048)
	public String community_board_reply_content;

	@CreationTimestamp
	private Timestamp community_board_reply_writedate;
	
}
