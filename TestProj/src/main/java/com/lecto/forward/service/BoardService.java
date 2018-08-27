package com.lecto.forward.service;

import java.util.List;

import com.lecto.forward.dto.BoardDTO;
import com.lecto.forward.dto.GradeDTO;
import com.lecto.forward.dto.MemberGradesDTO;
import com.lecto.forward.vo.BoardSearchVO;

public interface BoardService {
	
	public boolean addBoard(BoardDTO boardDTO) throws Exception;
	public boolean addGrade(List<GradeDTO> grades)throws Exception;
	public boolean addMemberGrades(MemberGradesDTO membergradesDTO) throws Exception;
	public boolean updateBoard(BoardDTO boardDTO,List<GradeDTO> grades) throws Exception;
	public boolean updateBoard(String boardCode, String themeCode) throws Exception;
	public boolean updateGrade(String boardCode, List<GradeDTO> grades) throws Exception;	//추가됨 
	public List<BoardSearchVO> searchBoard() throws Exception;
	public List<BoardSearchVO> searchBoard(String searchWay, String keyword) throws Exception;
	public BoardDTO searchBoardName(String boardName) throws Exception;
	public BoardDTO searchBoardCode(String boardCode) throws Exception;
	public List<GradeDTO> searchGrade(String boardCode) throws Exception; //추가됨
	public String generateBoardCode() throws Exception;
	public String generateBoardMemberGrade() throws Exception;
	public boolean deleteBoard(String boardCode) throws Exception;
	public boolean deleteBoard(List<String> boardCode) throws Exception;		// mapper의 delete 리턴값이 int 인데 삭제된 게시판 목록을 어떻게?
	public boolean deleteBoardName(List<String> boardName) throws Exception;

}