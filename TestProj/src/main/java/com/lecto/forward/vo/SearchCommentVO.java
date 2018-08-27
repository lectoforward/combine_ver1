package com.lecto.forward.vo;

public class SearchCommentVO {
	private String articleTitle;
	private String articleCode;
	private String memberNickName;
	private String commentContent;
	private String commentDate;
	private String myCode;
	private int depth;
	private String boardCode;
	private String boardName;
	private String memberId;
	private String commentCode;
	public SearchCommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchCommentVO(String articleTitle, String articleCode, String memberNickName, String commentContent,
			String commentDate, String myCode, int depth, String boardCode, String boardName, String memberId,
			String commentCode) {
		super();
		this.articleTitle = articleTitle;
		this.articleCode = articleCode;
		this.memberNickName = memberNickName;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.myCode = myCode;
		this.depth = depth;
		this.boardCode = boardCode;
		this.boardName = boardName;
		this.memberId = memberId;
		this.commentCode = commentCode;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public String getArticleCode() {
		return articleCode;
	}
	public String getMemberNickName() {
		return memberNickName;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public String getMyCode() {
		return myCode;
	}
	public int getDepth() {
		return depth;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public String getBoardName() {
		return boardName;
	}
	public String getMemberId() {
		return memberId;
	}
	public String getCommentCode() {
		return commentCode;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public void setMyCode(String myCode) {
		this.myCode = myCode;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setCommentCode(String commentCode) {
		this.commentCode = commentCode;
	}
	@Override
	public String toString() {
		return "SearchCommentViewVO [articleTitle=" + articleTitle + ", articleCode=" + articleCode
				+ ", memberNickName=" + memberNickName + ", commentContent=" + commentContent + ", commentDate="
				+ commentDate + ", myCode=" + myCode + ", depth=" + depth + ", boardCode=" + boardCode + ", boardName="
				+ boardName + ", memberId=" + memberId + ", commentCode=" + commentCode + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((articleCode == null) ? 0 : articleCode.hashCode());
		result = prime * result + ((articleTitle == null) ? 0 : articleTitle.hashCode());
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + ((boardName == null) ? 0 : boardName.hashCode());
		result = prime * result + ((commentCode == null) ? 0 : commentCode.hashCode());
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + ((commentDate == null) ? 0 : commentDate.hashCode());
		result = prime * result + depth;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((memberNickName == null) ? 0 : memberNickName.hashCode());
		result = prime * result + ((myCode == null) ? 0 : myCode.hashCode());
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
		SearchCommentVO other = (SearchCommentVO) obj;
		if (articleCode == null) {
			if (other.articleCode != null)
				return false;
		} else if (!articleCode.equals(other.articleCode))
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
		if (boardName == null) {
			if (other.boardName != null)
				return false;
		} else if (!boardName.equals(other.boardName))
			return false;
		if (commentCode == null) {
			if (other.commentCode != null)
				return false;
		} else if (!commentCode.equals(other.commentCode))
			return false;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentDate == null) {
			if (other.commentDate != null)
				return false;
		} else if (!commentDate.equals(other.commentDate))
			return false;
		if (depth != other.depth)
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (memberNickName == null) {
			if (other.memberNickName != null)
				return false;
		} else if (!memberNickName.equals(other.memberNickName))
			return false;
		if (myCode == null) {
			if (other.myCode != null)
				return false;
		} else if (!myCode.equals(other.myCode))
			return false;
		return true;
	}
	
}
