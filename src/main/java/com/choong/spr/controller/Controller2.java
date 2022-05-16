package com.choong.spr.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.choong.spr.domain.*;
import com.choong.spr.service.*;

@Controller
@RequestMapping("board")
public class Controller2 {

	@Autowired
	private Service1 service;
	
	@PostMapping("reply/add")
	public String addReply(ReplyDto reply) {
		boolean success = service.addReply(reply);
		return "redirect:/board/board/" + reply.getBoardId();
	}
	
	@PostMapping("reply/remove")
	public String removeReply(ReplyDto reply) {
		boolean success = service.removeReplyById(reply.getId());
		return "redirect:/board/board/" + reply.getBoardId();
	}
	
	@PostMapping("reply/modify")
	public String modifyReply(ReplyDto reply) {
		boolean success = service.modifyReply(reply);
		return "redirect:/board/board/" + reply.getBoardId();
	}
	
}
