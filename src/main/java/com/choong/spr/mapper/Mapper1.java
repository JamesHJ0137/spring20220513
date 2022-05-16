package com.choong.spr.mapper;

import java.util.*;

import com.choong.spr.domain.*;

public interface Mapper1 {

	List<BoardDto> selectBoard();

	BoardDto getBoard(int id);

	int updateBoard(BoardDto board);

	int deleteBoard(int id);

	int insertBoard(BoardDto board);

	int insertReply(ReplyDto reply);
	
	List<ReplyDto> selectReplyByBoardId(int boardId);

	int deleteReplyById(int id);

	int updateReply(ReplyDto reply);
	
	void deleteReplyByBoard(int boardId);

}
