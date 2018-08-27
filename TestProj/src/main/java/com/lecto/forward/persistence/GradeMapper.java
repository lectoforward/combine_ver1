package com.lecto.forward.persistence;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.GradeDTO;


public interface GradeMapper {
	public void addGradeParam(GradeDTO gradeDTO) throws SQLException;
	public void addGradeParams(List<GradeDTO> gradeList) throws SQLException;
	public void updateUseGradeCodeAndNum(@Param("gradeNum") int gradeNum, @Param("newGradeName") String newGradeName, @Param("newArticleCount")int newArticleCount, @Param("boardCode") String boardCode) throws SQLException;
	public void updateArticleCount(@Param("gradeNum") int gradeNum, @Param("newArticleCount")int newArticleCount, @Param("boardCode") String boardCode) throws SQLException;
	public void updateGradeName(@Param("gradeNum") int gradeNum, @Param("newGradeName")String newGradeName, @Param("boardCode")String boardCode) throws SQLException;
	public void updateGrade(GradeDTO gradeDTO) throws SQLException;
	public void deleteBoardParam(String boardCode) throws SQLException;
	public void deleteGradeParams(@Param("boardCode") String boardCode, @Param("gradeNum") int gradeNum) throws SQLException;
	public void deleteGradeParam(GradeDTO gradeDTO) throws SQLException;
	public void deleteGradeDtoArray(List<GradeDTO> grades) throws SQLException;
	public GradeDTO searchUseNameAndCode(@Param("gradeName")String gradeName, @Param("boardCode") String boardCode);
	public List<GradeDTO> searchUseCode(String boardCode);
	public GradeDTO searchUseDto(GradeDTO gradeDTO);
	public List<GradeDTO> searchGradeDtos(List<GradeDTO> grades)throws SQLException;
	public String gradeChange(String gradeChangeList) throws SQLException;
	public String generateCode();
	public boolean load() throws Exception;
}
