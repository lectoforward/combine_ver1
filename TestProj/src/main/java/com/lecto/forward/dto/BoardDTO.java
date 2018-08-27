package com.lecto.forward.dto;


public class BoardDTO {
	private String boardCode;
	private String boardName;
	private String gradeUpDate;
	private String themeCode;
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDTO(String boardCode,String boardName, String gradeUpDate, String themeCode) {
		super();
		this.boardCode = boardCode;
		this.boardName = boardName;
		this.gradeUpDate = gradeUpDate;
		this.themeCode = themeCode;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public String getBoardName() {
		return boardName;
	}
	public String getGradeUpDate() {
		return gradeUpDate;
	}
	public String getThemeCode() {
		return themeCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public void setGradeUpDate(String gradeUpDate) {
		this.gradeUpDate = gradeUpDate;
	}
	public void setThemeCode(String themeCode) {
		this.themeCode = themeCode;
	}
	@Override
	public String toString() {
		return "BoardDTO [boardCode=" + boardCode + ", boardName=" + boardName + ", gradeUpDate=" + gradeUpDate
				+ ", themeCode=" + themeCode + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + ((boardName == null) ? 0 : boardName.hashCode());
		result = prime * result + ((gradeUpDate == null) ? 0 : gradeUpDate.hashCode());
		result = prime * result + ((themeCode == null) ? 0 : themeCode.hashCode());
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
		BoardDTO other = (BoardDTO) obj;
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
		if (gradeUpDate == null) {
			if (other.gradeUpDate != null)
				return false;
		} else if (!gradeUpDate.equals(other.gradeUpDate))
			return false;
		if (themeCode == null) {
			if (other.themeCode != null)
				return false;
		} else if (!themeCode.equals(other.themeCode))
			return false;
		return true;
	}
	
}
