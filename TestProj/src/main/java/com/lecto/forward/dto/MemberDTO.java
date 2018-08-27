package com.lecto.forward.dto;


public class MemberDTO {
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberNickname;
	private String memberBirth;
	private String memberMail;
	private String memberPhone;
	private String memberAddress;
	private String registerDate;
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDTO(String memberId, String memberPwd, String memberName, String memberNickname, String memberBirth,
			String memberMail, String memberPhone, String memberAddress, String registerDate) {
		super();
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
	public String getMemberId() {
		return memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public String getMemberNickname() {
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
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public void setMemberNickname(String memberNickname) {
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
		return "MemberDTO [memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberName=" + memberName
				+ ", memberNickname=" + memberNickname + ", memberBirth=" + memberBirth + ", memberMail=" + memberMail
				+ ", memberPhone=" + memberPhone + ", memberAddress=" + memberAddress + ", registerDate=" + registerDate
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		MemberDTO other = (MemberDTO) obj;
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
