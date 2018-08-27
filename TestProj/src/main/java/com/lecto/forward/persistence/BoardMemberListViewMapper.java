package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.Criteria;
import com.lecto.forward.vo.BoardMemberListVO;

public interface BoardMemberListViewMapper {
	/** 보드 코드에 해당하는 게시판의 멤버 정보 가져오기 */
	public List<BoardMemberListVO> searchBoardCode(@Param("boardCode")String boardCode,  @Param("cri")Criteria cri) throws Exception;
	/** 보드 이름에 해당하는 게시판의 멤버 정보 가져오기 */
	public List<BoardMemberListVO> searchBoardName(@Param("boardName")String boardName,  @Param("cri")Criteria cri) throws Exception;
	/** 보드 코드에 해당하는 게시판에서 멤버아이디와 일치하는 멤바 정보 가져오기 */
	public List<BoardMemberListVO> searchBCMemberId(@Param("boardCode")String boardCode, @Param("memberId")String memberId) throws Exception;
	/** 보드 이름에 해당하는 게시판에서 멤버아이디와 일치하는 멤바 정보 가져오기 */
	public List<BoardMemberListVO> searchBNMemberId(@Param("boardName")String boardName, @Param("memberId")String memberId, @Param("cri")Criteria cri) throws Exception;
	/** 보드 코드에 해당하는 게시판에서 멤버닉네임과 일치하는 멤바 정보 가져오기 */
	public List<BoardMemberListVO> searchBCMemberNickname(@Param("boardCode")String boardCode, @Param("memberNickname")String memberNickname) throws Exception;
	/** 보드 이름에 해당하는 게시판에서 멤버닉네임과 일치하는 멤바 정보 가져오기 */
	public List<BoardMemberListVO> searchBNMemberNickname(@Param("boardName")String boardName, @Param("memberNickname")String memberNickname,  @Param("cri")Criteria cri) throws Exception;
	/** 보드 코드에 해당하는 게시판에서 등급명과 일치하는 멤바 정보들 가져오기 */
	public List<BoardMemberListVO> searchBCGradeName(@Param("boardCode")String boardCode, @Param("gradeName")String gradeName) throws Exception;
	/** 보드 이름에 해당하는 게시판에서 등급명과 일치하는 멤바 정보들 가져오기 */
	public List<BoardMemberListVO> searchBNGradeName(@Param("boardName")String boardName, @Param("gradeName")String gradeName,  @Param("cri")Criteria cri) throws Exception;
}
