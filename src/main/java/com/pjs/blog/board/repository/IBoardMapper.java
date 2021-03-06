package com.pjs.blog.board.repository;

import java.util.List;

import com.pjs.blog.board.model.BoardVO;
import com.pjs.blog.commons.SearchVO;

//게시판 관련 CRUD 추상메서드 선언 
public interface IBoardMapper {

	//게시글 등록 기능
	void insert(BoardVO article);

	//게시글 상세 조회기능
	BoardVO getArticle(Integer boardNo);
	
	//게시물 조회수 상승 처리
	void updateViewCnt(Integer boardNo);

	//게시글 수정 기능
	void update(BoardVO article);

	//게시글 삭제 기능
	void delete(Integer boardNo);

	//# 검색, 페이징 기능이 포함된 게시물 목록 조회기능
	List<BoardVO> getArticleList(SearchVO search);
	
	//검색어에 대한 게시물의 개수 조회 기능
	Integer countArticles(SearchVO search);

}






