package com.choong.spr.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.choong.spr.domain.*;
import com.choong.spr.service.*;

@Controller
@RequestMapping("board")
public class Controller1 {

	@Autowired
	private Service1 service;
	
	
//	@RequestMapping("/board/list")
//	public void listBoard(Model model) {
//		List<BoardDto> list = service.listBoard();
//		
//		model.addAttribute("boardList", list);
//	}
	
	@GetMapping("/board/list")
	public void listBoard(@RequestParam(name="page", defaultValue="1") int page, Model model) {
		int rowPerPage = 5;
		
		int totalRecords = service.countWriting();
		int end = (totalRecords - 1) / rowPerPage + 1;
		
		PageInfoDto pageInfo = new PageInfoDto();
		
		pageInfo.setCurrent(page);
		pageInfo.setEnd(end);

		model.addAttribute("pageInfo", pageInfo);
		
		List<BoardDto> list = service.listBoard(page, rowPerPage);
		
		model.addAttribute("boardList", list);
		
	}
	
 	
	@GetMapping("/board/{id}")
	public String getBoard(@PathVariable("id") int id, Model model) {
		BoardDto dto = service.getBoard(id);
		List<ReplyDto> replyList = service.listReplyByBoardId(id);
		
		model.addAttribute("board", dto);
		model.addAttribute("replyList", replyList);
		return "/board/board/get";
	}
	
	@PostMapping("/board/modify")
	public String modifyBoard(BoardDto board) {
		boolean success = service.updateBoard(board);
		
		if(success) {
			
		} else {
			
		}
		return "redirect:/board/board/" + board.getId();
	}
	
	@PostMapping("/board/remove")
	public String removeBoard(int id) {
		boolean success = service.removeBoardById(id);
		
		if(success) {
			
		} else {
			
		}
		return "redirect:/board/board/list";
	}
	
	@GetMapping("/board/write")
	public void writeBoard() {
		
	}
	
	@PostMapping("/board/write")
	public String writeBoardProcess(BoardDto board) {
		boolean success = service.addBoard(board);
		if(success) {
			
		} else {
			
		}
		return "redirect:/board/board/" + board.getId();
	}
}
