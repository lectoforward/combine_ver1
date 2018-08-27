package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.vo.ArticleVO;

/** 모든 게시판 별 게시글 조회 할 때 쓰는 뷰로... 작성자 닉네임, 공지, 제목, 내용, 게시글 코드, 작성일자, 조회수, 댓글 수, 게시판코드 */
public interface ArticleViewMapper {
	/** 게시판명으로 게시판별 게시글 목록 받아오기  */
	public List<ArticleVO> searchArticle(String boardCode) throws Exception;
	/** 게시판별 게시글 검색방법(닉네임, 제목, 내용) 정해서 검색어로 부분 검색하기 */
	public List<ArticleVO> searchArticleKeyword(@Param("boardCode")String boardCode, @Param("searchWayCode")String searchWayCode, @Param("keyword")String keyword) throws Exception;  //@Param("boardCode")
	/** 공지 게시글만 가져오기 */
	public List<ArticleVO> searchNotice(boolean notice) throws Exception;
	/** 한 객체로 검색해서 있으면 가져오기 */
	public ArticleVO searchArticleView(ArticleVO articleVO) throws Exception;
	/** 여러개로 검색해서 있으면 가져오기 */
	public List<ArticleVO> searchArticleViews(List<ArticleVO> articles) throws Exception;
	/** articleCode로 게시글 찾기*/
	public ArticleVO searchArticleCode(String articleCode) throws Exception;
	/** 30일 내 게시글 등록일자 리턴 */
	public List<String> searchArticleByDate(@Param("boardCode")String boardCode) throws Exception;
	/** 13개월 내 게시글 등록일자 리턴 */
	public Integer searchArticleByMonth(@Param("boardCode")String boardCode, @Param("criteriaDate")String criteriaDate) throws Exception;
}
