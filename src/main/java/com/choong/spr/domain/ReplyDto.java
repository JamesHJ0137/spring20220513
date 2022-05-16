package com.choong.spr.domain;

import java.time.*;

import lombok.*;

@Data
public class ReplyDto {
	private int id;
	private int boardId;
	private String content;
	private LocalDateTime inserted;
}
