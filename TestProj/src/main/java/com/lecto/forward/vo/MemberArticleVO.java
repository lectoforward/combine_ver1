package com.lecto.forward.vo;


public class MemberArticleVO {
	private String memberId;
	private String articleCode;
	private String boardName;
	private int articleHits;
	private String articleContent;
	private String articleTitle;
	private boolean notice;
	private String articleDate;
	private int commentCnt;
	private String memberNickname;
	
	public MemberArticleVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberArticleVO(String memberId, String articleCode, String boardName, int articleHits,
			String articleContent, String articleTitle, boolean notice, String articleDate, int commentCnt,
			String memberNickname) {
		super();
		this.memberId = memberId;
		this.articleCode = articleCode;
		this.boardName = boardName;
		this.articleHits = articleHits;
		this.articleContent = articleContent;
		this.articleTitle = articleTitle;
		this.notice = notice;
		this.articleDate = articleDate;
		this.commentCnt = commentCnt;
		this.memberNickname = memberNickname;
	}
	public String getmemberId() {
		return memberId;
	}
	public String getArticleCode() {
		return articleCode;
	}
	public String getBoardName() {
		return boardName;
	}
	public int getArticleHits() {
		return articleHits;
	}
	public String getarticleContent() {
		return articleContent;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public boolean getNotice() {
		return notice;
	}
	public String getArticleDate() {
		return articleDate;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public void setArticleHits(int articleHits) {
		this.articleHits = articleHits;
	}
	public void setarticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public void setNotice(boolean notice) {
		this.notice = notice;
	}
	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	@Override
	public String toString() {
		return "MemberArticleViewVO [memberId=" + memberId + ", articleCode=" + articleCode + ", boardName="
				+ boardName + ", articleHits=" + articleHits + ", articleContent=" + articleContent
				+ ", articleTitle=" + articleTitle + ", notice=" + notice + ", articleDate=" + articleDate
				+ ", commentCnt=" + commentCnt + ", memberNickname=" + memberNickname + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((articleCode == null) ? 0 : articleCode.hashCode());
		result = prime * result + ((articleDate == null) ? 0 : articleDate.hashCode());
		result = prime * result + articleHits;
		result = prime * result + ((articleTitle == null) ? 0 : articleTitle.hashCode());
		result = prime * result + ((articleContent == null) ? 0 : articleContent.hashCode());
		result = prime * result + ((boardName == null) ? 0 : boardName.hashCode());
		result = prime * result + commentCnt;
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + (notice ? 1231 : 1237);
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberArticleVO other = (MemberArticleVO) obj;
		if (articleCode == null) {
			if (other.articleCode != null)
				return false;
		} else if (!articleCode.equals(other.articleCode))
			return false;
		if (articleDate == null) {
			if (other.articleDate != null)
				return false;
		} else if (!articleDate.equals(other.articleDate))
			return false;
		if (articleHits != other.articleHits)
			return false;
		if (articleTitle == null) {
			if (other.articleTitle != null)
				return false;
		} else if (!articleTitle.equals(other.articleTitle))
			return false;
		if (articleContent == null) {
			if (other.articleContent != null)
				return false;
		} else if (!articleContent.equals(other.articleContent))
			return false;
		if (boardName == null) {
			if (other.boardName != null)
				return false;
		} else if (!boardName.equals(other.boardName))
			return false;
		if (commentCnt != other.commentCnt)
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (notice != other.notice)
			return false;
		return true;
	}
	
}
