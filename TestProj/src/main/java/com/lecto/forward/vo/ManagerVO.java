package com.lecto.forward.vo;

public class ManagerVO {
	private String memberId;
	private String memberName;
	private String memberPhone;
	private String boardName;
	private String boardCode;
	
	public ManagerVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ManagerVO(String memberId, String memberName, String memberPhone, String boardName, String boardCode) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.boardName = boardName;
		this.boardCode = boardCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	@Override
	public String toString() {
		return "ManagerVO [memberId=" + memberId + ", memberName=" + memberName + ", memberPhone=" + memberPhone
				+ ", boardName=" + boardName + ", boardCode=" + boardCode + "]";
	}
	
	
}
