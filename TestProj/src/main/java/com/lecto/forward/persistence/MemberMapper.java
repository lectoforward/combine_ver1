package com.lecto.forward.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.MemberDTO;

public interface MemberMapper {
	/** 회원 추가 */
	public void addMember(MemberDTO memberDTO) throws Exception;
	/** 회원 여러명 추가 */
	public void addMembers(List<MemberDTO> members) throws Exception;
	/** 아이디 제외 회원 정보 수정 */
	public void updateMember(MemberDTO memberDTO) throws Exception;
	/** 아이디에 맞는 회원의 비번 수정 */
	public void updatePwd(@Param("memberId")String memberId, @Param("memberPwd")String memberPwd) throws Exception;
	/** 아이디에 맞는 회원의 닉네임 수정 */
	public void updateNickname(@Param("memberId")String memberId, @Param("memberNickname")String memberNickname) throws Exception;
	/** 아이디에 맞는 회원의 이름 수정 */
	public void updateName(@Param("memberId")String memberId, @Param("memberName")String memberName) throws Exception;
	/** 아이디에 맞는 회원의 생년월일 수정 */
	public void updateBirth(@Param("memberId")String memberId, @Param("memberBirth")String memberBirth) throws Exception;
	/** 아이디에 맞는 회원의 메일 수정 */
	public void updateMail(@Param("memberId")String memberId, @Param("memberMail")String memberMail) throws Exception;
	/** 아이디에 맞는 회원의 전번 수정 */
	public void updatePhone(@Param("memberId")String memberId, @Param("memberPhone")String memberPhone) throws Exception;
	/** 아이디에 맞는 회원의 주소 수정 */
	public void updateAddress(@Param("memberId")String memberId, @Param("memberAddress")String memberAddress) throws Exception;
	/** 아이디에 맞는 회원의 정보 삭제 */
	public int deleteMember(String memberId) throws Exception;	
	/** 아이디에 맞는 회원의 정보들 삭제 */
	public int deleteMembers(ArrayList<String> memberIds) throws Exception;	
	/** 아이디와 비밀번호 일치하면 아이디 리턴 */
	public MemberDTO login(@Param("memberId")String memberId) throws Exception;
	/** 아이디 일치하는 아이디 리턴 */
	public MemberDTO searchId(String memberId) throws Exception;
	/** 모든 회원 리턴 */
	public List<MemberDTO> searchIds() throws Exception;
	/** 아이디 찾을 때, 이름, 전번, 메일 일치하면 MemebrDTO 리턴 */
	public MemberDTO searchFindId(@Param("memberName")String memberName, @Param("memberPhone")String memberPhone, @Param("memberMail")String memberMail) throws Exception;
	/** 비번 찾을 때, 아이디, 전번, 메일 일치하면 MemebrDTO 리턴 */
	public MemberDTO searchFindPwd(@Param("memberId")String memberId, @Param("memberPhone")String memberPhone, @Param("memberMail")String memberMail) throws Exception;
	/** 닉니임 일치하는 MemebrDTO 리턴 */
	public MemberDTO searchNickname(String memberNickname) throws Exception;
	/** 전번 일치하는 MemebrDTO 리턴 */
	public MemberDTO searchPhone(String memberPhone) throws Exception;
	/** 메일 일치하는 MemebrDTO 리턴 */
	public MemberDTO searchMail(String memberMail) throws Exception;
	/** MemebrDTO와 완전 일치하는 MemebrDTO 리턴 */
	public MemberDTO searchMember(MemberDTO memberDTO) throws Exception;
	/** MemebrDTO들과 완전 일치하는 MemebrDTO들 리턴 */
	public List<MemberDTO> searchMembers(ArrayList<MemberDTO> members) throws Exception;
	/** ID중복검사(비동기)*/
	public int idCheck(String memberId) throws Exception;
	/** 이메일중복검사(비동기)*/
	public int emailCheck(String memberMail)throws Exception;
	/** 폰번호중복검사(비동기)*/
	public int phoneCheck(String memberPhone)throws Exception;
	/** 닉네임중복검사(비동기)*/
	public int nicknameCheck(String memberNickname) throws Exception;
	/** 아이디찾기(비동기)*/
	public int findId(@Param("memberName")String memberName, @Param("memberPhone")String memberPhone, @Param("memberMail")String memberMail)throws Exception;
	/** 비밀번호찾기(비동기)*/
	public int findPwd(@Param("memberId")String memberId, @Param("memberPhone")String memberPhone, @Param("memberMail")String memberMail) throws Exception;
	/** 30일 내 가입일자 리턴 */
	public List<String> searchRegDateByDate() throws Exception;
	/** 13개월 내 가입일자 리턴 */
	public Integer searchRegDateByMonth(@Param("criteriaDate")String criteriaDate) throws Exception;
}
