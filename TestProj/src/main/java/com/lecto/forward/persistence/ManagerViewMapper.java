package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.vo.ManagerVO;

public interface ManagerViewMapper {
	public ManagerVO searchMemberId(@Param("memberId")String memberId) throws Exception;
	public List<ManagerVO> searchMemberName(@Param("memberName")String memberName) throws Exception;
	public ManagerVO searchBoardName(@Param("boardName")String boardName) throws Exception;
	public ManagerVO searchManagerView(ManagerVO manager) throws Exception;
	public List<ManagerVO> searchManagerViews(List<ManagerVO> managers) throws Exception;
	public List<ManagerVO> searchManagerViewAll() throws Exception;
}
