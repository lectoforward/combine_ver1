package com.lecto.forward.dto;

public class MemberGradesDTO {
	private String boardMemberGrade;
	private String boardCode;
	private String memberId;
	private int gradeNum;
	public MemberGradesDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberGradesDTO(String boardMemberGrade, String boardCode, String memberId, int gradeNum) {
		super();
		this.boardMemberGrade = boardMemberGrade;
		this.boardCode = boardCode;
		this.memberId = memberId;
		this.gradeNum = gradeNum;
	}
	public String getBoardMemberGrade() {
		return boardMemberGrade;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public int getGradeNum() {
		return gradeNum;
	}
	public void setBoardMemberGrade(String boardMemberGrade) {
		this.boardMemberGrade = boardMemberGrade;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setGradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}
	@Override
	public String toString() {
		return "MemberGradesDTO [boardMemberGrade=" + boardMemberGrade + ", boardCode=" + boardCode + ", memberId="
				+ memberId + ", gradeNum=" + gradeNum + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + ((boardMemberGrade == null) ? 0 : boardMemberGrade.hashCode());
		result = prime * result + gradeNum;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		MemberGradesDTO other = (MemberGradesDTO) obj;
		if (boardCode == null) {
			if (other.boardCode != null)
				return false;
		} else if (!boardCode.equals(other.boardCode))
			return false;
		if (boardMemberGrade == null) {
			if (other.boardMemberGrade != null)
				return false;
		} else if (!boardMemberGrade.equals(other.boardMemberGrade))
			return false;
		if (gradeNum != other.gradeNum)
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

	
}
