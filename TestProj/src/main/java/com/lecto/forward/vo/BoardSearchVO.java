package com.lecto.forward.vo;

public class BoardSearchVO {
	private String memberId;
	private String themeName;
	private String boardName;
	private String boardCode;
	public BoardSearchVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardSearchVO(String memberId, String themeName, String boardName,String boardCode) {
		super();
		this.memberId = memberId;
		this.themeName = themeName;
		this.boardName = boardName;
		this.boardCode= boardCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public String getThemeName() {
		return themeName;
	}
	public String getBoardName() {
		return boardName;
	}
	public String getBoardCode(){
		return boardCode;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public void setBoardCode(String boardCode){
		this.boardCode = boardCode;
	}
	
	
	@Override
	public String toString() {
		return "BoardSearchViewVO [memberId=" + memberId + ", themeName=" + themeName + ", boardName=" + boardName +", boardCode="
				+boardCode+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardName == null) ? 0 : boardName.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((themeName == null) ? 0 : themeName.hashCode());
		result = prime * result + ((boardCode == null) ? 0 : boardCode.hashCode());
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
		BoardSearchVO other = (BoardSearchVO) obj;
		if (boardName == null) {
			if (other.boardName != null)
				return false;
		} else if (!boardName.equals(other.boardName))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (themeName == null) {
			if (other.themeName != null)
				return false;
		} else if (!themeName.equals(other.themeName))
			return false;
		if (boardCode == null) {
			if (other.boardCode != null)
				return false;
		} else if (!boardCode.equals(other.boardCode))
			return false;
		return true;
	}
}
