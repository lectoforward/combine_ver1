package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.BoardDTO;

public interface BoardMapper {
	public void addBoardDTO(BoardDTO boardDTO) throws Exception;
	public void addBoards(List<BoardDTO> boards) throws Exception;
	public void updateGradeUpdate(@Param("boardCode")String boardCode, @Param("gradeUpDate")String gradeUpDate) throws Exception;
	public void updateBoardName(@Param("boardCode")String boardCode,@Param("boardName")String boardName)  throws Exception;
	public void updateThemeCode(@Param("boardCode")String boardCode, @Param("themeCode")String themeCode) throws Exception;
	public void updateBoard(BoardDTO boardDTO) throws Exception;
	public int deleteBoard(String boardCode) throws Exception; //¼öÁ¤µÊ boardDTO -> String
	public int deleteBoards(List<String> boardCodes) throws Exception; 	//¼öÁ¤µÈ boardDTO-> String
	public int deleteBoardName(List<String> boardName) throws Exception; // Ãß°¡µÊ 180822
	public List<BoardDTO>searchBoardAll() throws Exception;
	public BoardDTO searchBoardName(String BoardName) throws Exception;
	public BoardDTO searchBoardCode(String boardCode) throws Exception;
	public List<BoardDTO> searchThemeCode(String themeCode) throws Exception;
	public List<BoardDTO> searchGradeUpdate(String gradeUpDate) throws Exception;
	public BoardDTO searchBoard(BoardDTO boardDTO) throws Exception;
	public List<BoardDTO> searchBoards(List<BoardDTO> boards) throws Exception;
	
}
