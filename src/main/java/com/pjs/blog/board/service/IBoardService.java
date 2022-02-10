package com.pjs.blog.board.service;

import java.util.List;

import com.pjs.blog.board.model.BoardVO;
import com.pjs.blog.commons.SearchVO;

public interface IBoardService {

	//게시글 등록 기능
	void insert(BoardVO article);

	//게시글 상세 조회기능
	BoardVO getArticle(Integer boardNo);

	//게시글 수정 기능
	void update(BoardVO article);

	//게시글 삭제 기능
	void delete(Integer boardNo);
	
	//게시글 목록 조회 기능(검색, 페이징 통합)
	List<BoardVO> getArticleList(SearchVO search);
	
	//검색어에 대한 게시물의 개수 조회 기능
	Integer countArticles(SearchVO search);




}

