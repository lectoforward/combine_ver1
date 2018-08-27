package com.lecto.forward.vo;


public class ArticleVO {
	private String boardCode;
	private String memberNickname;
	private int articleHits;
	private String articleTitle;
	private String articleContent;
	private String articleCode;
	private String articleDate;
	private boolean notice;
	private int commentCnt;

	public ArticleVO(){
		super();
	}
	public ArticleVO(String boardCode, String memberNickname, int articleHits, String articleTitle, String articleContent,
			String articleCode, String articleDate, boolean notice, int commentCnt){
		
		super();
		this.boardCode = boardCode;
		this.memberNickname = memberNickname;
		this.articleHits = articleHits;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleCode = articleCode;
		this.articleDate = articleDate;
		this.notice = notice;
		this.commentCnt = commentCnt;
		
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public int getArticleHits() {
		return articleHits;
	}
	public void setArticleHits(int articleHits) {
		this.articleHits = articleHits;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleCode() {
		return articleCode;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public String getArticleDate() {
		return articleDate;
	}
	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}
	public boolean getNotice() {
		return notice;
	}
	public void setNotice(boolean notice) {
		this.notice = notice;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	
	
	public String toString() {
		return "ArticleViewDTO [boardCode=" + boardCode + ", memberNickname=" + memberNickname + ", articleHits="
				+ articleHits + ", articleTitle=" + articleTitle + ", articleContent=" + articleContent
				+ ", articleCode=" + articleCode + ", articleDate=" + articleDate + ", notice=" + notice
				+ ", commentCnt=" + commentCnt + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((articleCode == null) ? 0 : articleCode.hashCode());
		result = prime * result + ((articleContent == null) ? 0 : articleContent.hashCode());
		result = prime * result + ((articleDate == null) ? 0 : articleDate.hashCode());
		result = prime * result + articleHits;
		result = prime * result + ((articleTitle == null) ? 0 : articleTitle.hashCode());
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + commentCnt;
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
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
		ArticleVO other = (ArticleVO) obj;
		if (articleCode == null) {
			if (other.articleCode != null)
				return false;
		} else if (!articleCode.equals(other.articleCode))
			return false;
		if (articleContent == null) {
			if (other.articleContent != null)
				return false;
		} else if (!articleContent.equals(other.articleContent))
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
		if (boardCode == null) {
			if (other.boardCode != null)
				return false;
		} else if (!boardCode.equals(other.boardCode))
			return false;
		if (commentCnt != other.commentCnt)
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (notice != other.notice)
			return false;
		return true;
	}
	
	
	
	



}
