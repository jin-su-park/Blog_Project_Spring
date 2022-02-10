package com.pjs.blog.reply.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjs.blog.reply.model.ReplyVO;
import com.pjs.blog.reply.repository.IReplyMapper;

@Service
public class ReplyService implements IReplyService {
	
	@Autowired
	private IReplyMapper mapper;
	
	@Override
	public void insert(ReplyVO reply) {
		mapper.insert(reply);
		
	}

	@Override
	public int count(int boardNo) {
		// TODO Auto-generated method stub
		return mapper.count(boardNo);
	}

	@Override
	public List<ReplyVO> list(int boardNo,int start, int countPerPage) {
		Map<String,Object> map= new HashMap<>();
		map.put("start", start);
		map.put("countPerPage", countPerPage);
		map.put("boardNo", boardNo);
		List<ReplyVO> list= mapper.list(map);
		for(ReplyVO reply : list) {
			//현재 시간 읽어오기
			long now = System.currentTimeMillis();//밀리초로 읽기 15억... * 1000초  
			//각 게시물들의 작성 시간 밀리초로 읽어오기
			long regTime = reply.getRegDate().getTime();
			
			if(now - regTime < 60 * 60 * 24 *  1000) {
				reply.setRegDateForm(true);
			}
		}
		return list;
	}

}
