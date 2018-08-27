package com.lecto.forward.service;

import com.lecto.forward.dto.Criteria;
import com.lecto.forward.dto.MemberDTO;
import com.lecto.forward.vo.MemberArticleVO;

public interface MemberService {
	
	public boolean addMember(MemberDTO memberDTO);
	public boolean addMember(MemberDTO memberDTO, String boardName);
	public boolean updateMember(MemberDTO memberDTO);
	public boolean updateMemberPwd(String memberId, String newPwd);
	public boolean updateMember(MemberDTO memberDTO, String newBoardName);
	public boolean deleteMember(String memberId);
	public boolean deleteMember(String[] memberIds);
	public MemberDTO login(String memberId);
	public MemberDTO searchMember(String memberId, String memberPwd);
	public MemberDTO searchMember(MemberDTO memberDTO);
	public MemberArticleVO[] searchMemberInfo(String memberId);
	public MemberDTO searchMember(String memberId);
	public String searchMemberId(String memberName, String memberPhone, String memberMail);
	public String searchMemberPwd(String memberId, String memberPhone, String memberMail);
	public Object[] searchBoardMember(String boardKey, Criteria cri);
	public Object[] searchBoardMember(String boardName, String searchWay, String keyword, Criteria cri);
	public Object[] searchBoardGradeMebers(String boardName, String gradeName, Criteria cri);
	public Object[] searchManager(String searchWay, String keyword);
	public Object[] searchManager();
	public Object[] searchBoard();
	public boolean isManager(String memberId);
	public boolean searchId(String memberId);
	public boolean searchNickname(String memberNickname);
	public boolean searchMail(String memberMail);
	public boolean searchPhone(String memberPhone);
	public int idCheck(String memberId)throws Exception;
	public int emailCheck(String memberMail) throws Exception;
	public int phoneCheck(String memberPhone) throws Exception;
	public int nicknameCheck(String memberNickname) throws Exception;
	public int findId(String memberName, String memberPhone, String memberMail) throws Exception;
	public int findPwd(String memberId, String memberPhone, String memberMail) throws Exception;
	public boolean nullCheck(String[] str);
}
