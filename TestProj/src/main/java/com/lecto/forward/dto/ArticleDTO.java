package com.lecto.forward.dto;

public class ArticleDTO {
	private String articleCode;
	private int articleHits;
	private String articleTitle;
	private String articleContent;
	private boolean notice;
	private String articleDate;
	private String boardCode;
	private String memberId;
	public ArticleDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArticleDTO(String articleCode, int articleHits, String articleTitle, String articleContent, boolean notice,
			String articleDate, String boardCode, String memberId) {
		super();
		this.articleCode = articleCode;
		this.articleHits = articleHits;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.notice = notice;
		this.articleDate = articleDate;
		this.boardCode = boardCode;
		this.memberId = memberId;
	}
	public String getArticleCode() {
		return articleCode;
	}
	public int getArticleHits() {
		return articleHits;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public boolean getNotice() {
		return notice;
	}
	public String getArticleDate() {
		return articleDate;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public void setArticleHits(int articleHits) {
		this.articleHits = articleHits;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public void setNotice(boolean notice) {
		this.notice = notice;
	}
	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "ArticleDTO [articleCode=" + articleCode + ", articleHits=" + articleHits + ", articleTitle="
				+ articleTitle + ", articleContent=" + articleContent + ", notice=" + notice + ", articleDate="
				+ articleDate + ", boardCode=" + boardCode + ", memberId=" + memberId + "]";
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
		ArticleDTO other = (ArticleDTO) obj;
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
