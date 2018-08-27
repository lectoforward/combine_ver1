package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.vo.BoardSearchVO;

/** 게시판 관리 담당자 아이디, 게시판명, 테마명만 보여주는 view */
public interface BoardSearchViewMapper {
	/** 게시판명으로 찾기 */
	public BoardSearchVO searchBoardName(@Param("boardName")String boardName) throws Exception;
	/** BoardSearchVO 객체로 찾기 */
	public BoardSearchVO searchBoardSearchView(BoardSearchVO boardSearchVO) throws Exception;
	/** BoardSearchVO 리스트로 찾기 */
	public List<BoardSearchVO> searchBoardSearchViews(List<BoardSearchVO> boardSearches) throws Exception;
	/** 관리 담당자 아이디로 찾기 */
	public BoardSearchVO searchMemberId(@Param("memberId")String memberId) throws Exception;
	/** 게시판 담당자 모두 찾기 */
	public List<BoardSearchVO> searchBoardSearchViewAll() throws Exception;
	/** 테마명으로 찾기*/
	public List<BoardSearchVO> searchThemeName(@Param("themeName")String themeName) throws Exception;	//추가됨
}
