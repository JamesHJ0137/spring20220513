package com.choong.spr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.ReplyDto;
import com.choong.spr.mapper.Mapper1;

@Service
public class Service1 {

	@Autowired
	private Mapper1 mapper;
	@Autowired
	private Mapper1 replyMapper;
	
	public List<BoardDto> listBoard(String type, String keyword, int page, int rowPerPage) {
		int from = (page-1) * rowPerPage;
		return mapper.selectBoard(type, "%" + keyword + "%", from, rowPerPage);
	}

	public BoardDto getBoard(int id) {
		return mapper.getBoard(id);
	}

	public boolean updateBoard(BoardDto board) {
		int cnt = mapper.updateBoard(board);
		return cnt == 1;
	}

	@Transactional
	public boolean removeBoardById(int id) {
		replyMapper.deleteReplyByBoard(id);
		int cnt = mapper.deleteBoard(id);
		return cnt == 1;
	}

	public boolean addBoard(BoardDto board) {
//		board.setInserted(LocalDateTime.now());
		int cnt = mapper.insertBoard(board);
		return cnt == 1;
	}

	public boolean addReply(ReplyDto reply) {
//		reply.setInserted(LocalDateTime.now());
		int cnt = mapper.insertReply(reply);
		return cnt == 1;
	}

	public List<ReplyDto> listReplyByBoardId(int boardId) {
		return mapper.selectReplyByBoardId(boardId);
	}
	
	public boolean removeReplyById(int id) {
		int cnt = mapper.deleteReplyById(id);
		return cnt == 1;
	}

	public boolean modifyReply(ReplyDto reply) {
		int cnt = mapper.updateReply(reply);
		return cnt == 1;
	}

	public int countWriting() {
		return mapper.countWriting();
	}

}
