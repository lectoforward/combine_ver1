package com.lecto.forward.dto;


public class GradeDTO {
	private int gradeNum;
	private String gradeName;
	private int articleCount;
	private String boardCode;
	public GradeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public GradeDTO(int gradeNum, String gradeName, int articleCount, String boardCode) {
		super();
		this.gradeNum = gradeNum;
		this.gradeName = gradeName;
		this.articleCount = articleCount;
		this.boardCode = boardCode;
	}

	public int getGradeNum() {
		return gradeNum;
	}
	public String getGradeName() {
		return gradeName;
	}
	public int getArticleCount() {
		return articleCount;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setGradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public void setArticleCount(int articleCount) {
		this.articleCount = articleCount;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}

	@Override
	public String toString() {
		return "GradeDTO [gradeNum=" + gradeNum + ", gradeName=" + gradeName + ", articleCount=" + articleCount
				+ ", boardCode=" + boardCode + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + articleCount;
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + ((gradeName == null) ? 0 : gradeName.hashCode());
		result = prime * result + gradeNum;
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
		GradeDTO other = (GradeDTO) obj;
		if (articleCount != other.articleCount)
			return false;
		if (boardCode == null) {
			if (other.boardCode != null)
				return false;
		} else if (!boardCode.equals(other.boardCode))
			return false;
		if (gradeName == null) {
			if (other.gradeName != null)
				return false;
		} else if (!gradeName.equals(other.gradeName))
			return false;
		if (gradeNum != other.gradeNum)
			return false;
		return true;
	}
	
}
