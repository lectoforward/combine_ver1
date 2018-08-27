package com.lecto.forward.persistence;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.MemberGradesDTO;

public interface MemberGradesMapper {
	/**MemberGrades 하나만 추가*/
	public void addMemberGradesDTO(MemberGradesDTO membreGradesDTO) throws Exception;
	/**MemberGrades 여러개 추가*/
	public void addMemberGrades(List<MemberGradesDTO> memberGradeses) throws Exception;
	/**게시판 수정 시 게시판별 회원등급 변경*/
	public void updateGradeNum(@Param("boardCode")String boardCode, @Param("memberId")String memberId, @Param("gradeNum")int gradeNum) throws Exception;
	/**MemberGrades 한개 수정*/
	public void updateMemberGradesDTO(MemberGradesDTO memberGradesDTO) throws Exception;
	/**MemberGrades 여러개 수정*/
	public void updateMemberGrades(List<MemberGradesDTO> memberGradeses) throws Exception;
	/*모든 memberGradesDTO 찾기*/
	public List<MemberGradesDTO> searchMembarGradesAll() throws Exception;
	/**boardCode로 memberGradesDTO 여러개 찾기*/
	public List<MemberGradesDTO> searchToBoardCode(String boardCode) throws Exception;
	/**gradeNum이 0보다 큰 MemberGradesDTO 찾기 (목적: 회원만 찾기)*/
	public  List<MemberGradesDTO> searchToMemberId() throws Exception;
	/**해당 게시판의 회원아이디로 저장되어 있는 memberGradesDTO 찾기 (목적: 회원등급 찾기)*/
	public MemberGradesDTO searchBoardGrades(@Param("boardCode")String boardCode,@Param("memberId") String memberId) throws Exception;
	/**해당 게시판의 파라미터로 주는 등급으로 memberGreadesDTO 찾기	(목적: 해당 게시판의 등급 변경 시 기존에 있던 등급을 바꾸기위함)*/
	public  List<MemberGradesDTO> searchMemberIdGrades(@Param("boardCode")String boardCode,@Param("gradeNum") int gradeNum) throws Exception;
	/**memberGrades 키값으로 찾는 메소드*/
	public MemberGradesDTO searchBoardMemberGrades(String boardMemberGrade) throws Exception;	
	/**회원탈퇴시 해당 회원으로 등록된 memberGradesDTO 삭제*/
	public void deleteMemberId(String memberId) throws Exception;
	/**게시판 삭제 시 해당 게시판으로 등록된 memberGradesDTO 삭제*/
	public void deleteBoardCode(String boardCode) throws Exception;
}