package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.vo.MemberArticleVO;

public interface MemberArticleViewMapper {
	public List<MemberArticleVO> searchNicknameArticle(@Param("memberNickname") String memberNickname) throws Exception;
	public List<MemberArticleVO> searchNicknameArticles(@Param("memberNickname")String memberNickname) throws Exception;
	public List<MemberArticleVO> searchMemberIdArticle(@Param("memberId")String memberId) throws Exception;
	public List<MemberArticleVO> searchMemberIdArticles(@Param("memberId")String memberId) throws Exception;
	public int searchArticleCnt(@Param("boardName")String boardName, @Param("memberId")String memberId) throws Exception;
	public MemberArticleVO searchMemberArticleView(MemberArticleVO memberArticleVO) throws Exception;
	public List<MemberArticleVO> searchMemberArticleViews(List<MemberArticleVO> memberArticles) throws Exception;
}
