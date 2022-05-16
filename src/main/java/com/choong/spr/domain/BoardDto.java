package com.choong.spr.domain;

import java.time.*;

import lombok.*;

@Data
public class BoardDto {
	private int id;
	private String title;
	private String body;
	private LocalDateTime inserted;
	
	private int numOfReply;
}
