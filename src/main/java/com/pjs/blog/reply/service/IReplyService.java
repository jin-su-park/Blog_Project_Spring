package com.pjs.blog.reply.service;

import java.util.List;


import com.pjs.blog.reply.model.ReplyVO;

public interface IReplyService {
	void insert(ReplyVO reply);
	int count(int boardNo);
	List<ReplyVO> list(int boardNo,int start, int countPerPage);
}
