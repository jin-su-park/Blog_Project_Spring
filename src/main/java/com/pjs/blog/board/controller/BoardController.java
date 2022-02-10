package com.pjs.blog.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pjs.blog.board.model.BoardVO;
import com.pjs.blog.board.service.IBoardService;
import com.pjs.blog.commons.PageCreator;
import com.pjs.blog.commons.PageVO;
import com.pjs.blog.commons.SearchVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	private IBoardService service;
	
	//검색 처리 이후 게시물 목록 불러오기 요청
	@GetMapping("/list")
	public String list(SearchVO search, Model model) {
		
		PageCreator pc = new PageCreator();
		pc.setPaging(search);
		
		List<BoardVO> list = service.getArticleList(search);
		pc.setArticleTotalCount(service.countArticles(search));		
		
		model.addAttribute("articles", list);
		model.addAttribute("pc", pc);

		return "board/list";
	}

	//게시글 작성페이지 요청
	@GetMapping("/write")
	public String write(HttpSession session, RedirectAttributes ra) {
		return "board/write";
	}

	//게시글 DB등록 요청
	@PostMapping("/write")
	public String write(BoardVO article, RedirectAttributes ra) {
		service.insert(article);
		ra.addFlashAttribute("msg", "regSuccess");
		return "redirect:/board/list";
	}

	//게시물 상세 조회 요청
	@GetMapping("/content/{boardNo}")
	public String content(@PathVariable Integer boardNo, Model model
			, @ModelAttribute("p") SearchVO paging) {
		BoardVO vo = service.getArticle(boardNo);
		model.addAttribute("article", vo);
		return "board/content";
	}

	//게시물 삭제 처리 요청
	@PostMapping("/delete")
	public String remove(Integer boardNo, PageVO paging,
					RedirectAttributes ra) {

		service.delete(boardNo);
		ra.addFlashAttribute("msg", "delSuccess")
		  .addAttribute("page", paging.getPage())
		  .addAttribute("countPerPage", paging.getCountPerPage());

		return "redirect:/board/list";
	}
	
	//게시물 수정 페이지 요청
	@GetMapping("/modify")
	public String modify(Integer boardNo, Model model
			, @ModelAttribute("p") PageVO paging) {
		
		BoardVO vo = service.getArticle(boardNo);
		model.addAttribute("article", vo);
		
		return "board/modify";
	}
	
	//게시물 수정 요청
	@PostMapping("/modify")
	public String modify(BoardVO article, RedirectAttributes ra) {
		service.update(article);
		
		ra.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/board/content/" + article.getBoardNo();
	}

}











