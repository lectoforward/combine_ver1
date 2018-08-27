package com.lecto.forward.vo;

public class BoardMemberListVO {
	private String gradeName;
	private String boardName;
	private String boardCode;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberNickname;
	private String memberBirth;
	private String memberMail;
	private String memberPhone;
	private String memberAddress;
	private String registerDate;
	public BoardMemberListVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardMemberListVO(String gradeName, String boardName, String boardCode, String memberId, String memberPwd,
			String memberName, String memberNickname, String memberBirth, String memberMail, String memberPhone,
			String memberAddress, String registerDate) {
		super();
		this.gradeName = gradeName;
		this.boardName = boardName;
		this.boardCode = boardCode;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberNickname = memberNickname;
		this.memberBirth = memberBirth;
		this.memberMail = memberMail;
		this.memberPhone = memberPhone;
		this.memberAddress = memberAddress;
		this.registerDate = registerDate;
	}
	public String getGradeName() {
		return gradeName;
	}
	public String getBoardName() {
		return boardName;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public String getmemberNickname() {
		return memberNickname;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public String getMemberMail() {
		return memberMail;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public void setmemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public void setMemberMail(String memberMail) {
		this.memberMail = memberMail;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	@Override
	public String toString() {
		return "BoardMemberListVO [gradeName=" + gradeName + ", boardCode=" + boardCode + ", boardName=" + boardName
				+ ", memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberName=" + memberName
				+ ", memberNickname=" + memberNickname + ", memberBirth=" + memberBirth + ", memberMail=" + memberMail
				+ ", memberPhone=" + memberPhone + ", memberAddress=" + memberAddress + ", registerDate=" + registerDate
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
		result = prime * result + ((boardName == null) ? 0 : boardName.hashCode());
		result = prime * result + ((gradeName == null) ? 0 : gradeName.hashCode());
		result = prime * result + ((memberAddress == null) ? 0 : memberAddress.hashCode());
		result = prime * result + ((memberBirth == null) ? 0 : memberBirth.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((memberMail == null) ? 0 : memberMail.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((memberPhone == null) ? 0 : memberPhone.hashCode());
		result = prime * result + ((memberPwd == null) ? 0 : memberPwd.hashCode());
		result = prime * result + ((registerDate == null) ? 0 : registerDate.hashCode());
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
		BoardMemberListVO other = (BoardMemberListVO) obj;
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
		if (gradeName == null) {
			if (other.gradeName != null)
				return false;
		} else if (!gradeName.equals(other.gradeName))
			return false;
		if (memberAddress == null) {
			if (other.memberAddress != null)
				return false;
		} else if (!memberAddress.equals(other.memberAddress))
			return false;
		if (memberBirth == null) {
			if (other.memberBirth != null)
				return false;
		} else if (!memberBirth.equals(other.memberBirth))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (memberMail == null) {
			if (other.memberMail != null)
				return false;
		} else if (!memberMail.equals(other.memberMail))
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (memberPhone == null) {
			if (other.memberPhone != null)
				return false;
		} else if (!memberPhone.equals(other.memberPhone))
			return false;
		if (memberPwd == null) {
			if (other.memberPwd != null)
				return false;
		} else if (!memberPwd.equals(other.memberPwd))
			return false;
		if (registerDate == null) {
			if (other.registerDate != null)
				return false;
		} else if (!registerDate.equals(other.registerDate))
			return false;
		return true;
	}
	

}
