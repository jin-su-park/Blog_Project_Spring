package com.pjs.blog.reply.repository;

import java.util.List;
import java.util.Map;

import com.pjs.blog.reply.model.ReplyVO;

public interface IReplyMapper {
	void insert(ReplyVO reply);
	int count(int boardNo);
	List<ReplyVO> list(Map<String,Object> map);
}
