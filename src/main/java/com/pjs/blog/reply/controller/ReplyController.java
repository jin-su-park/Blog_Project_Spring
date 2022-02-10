package com.pjs.blog.reply.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.pjs.blog.commons.PageCreator;
import com.pjs.blog.commons.PageVO;
import com.pjs.blog.reply.model.ReplyVO;
import com.pjs.blog.reply.service.IReplyService;
import com.pjs.blog.user.model.UserVO;


@RestController
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	IReplyService rs;
	
	//댓글 입력 처리 요청
	@PostMapping("/insert")
	public void insertReply(ReplyVO reply,HttpSession session) {
		UserVO user=(UserVO)session.getAttribute("login");
		reply.setRePlyer(user.getAccount());
		rs.insert(reply);
	}
	
	//댓글 목록을 가져오는 처리
	@PostMapping("/list")
	public ModelAndView list(int boardNo,PageVO paging,ModelAndView mv) {
		Integer count=rs.count(boardNo);
		PageCreator pc= new PageCreator();
		pc.setPaging(paging);
		int start=paging.getPageStart();
		int countPerPage=paging.getCountPerPage();
		List<ReplyVO> list=
				rs.list(boardNo,start,countPerPage);
		System.out.println(list);
		pc.setArticleTotalCount(count);
		mv.setViewName("board/reply_list");
		mv.addObject("list",list);
		mv.addObject("pc", pc);
		return mv;
	}
	
}
