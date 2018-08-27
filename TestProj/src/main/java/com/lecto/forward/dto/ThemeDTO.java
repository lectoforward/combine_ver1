package com.lecto.forward.dto;

public class ThemeDTO {
	private String themeCode;
	private String themeName;
	private String themePath;
	private String imagePath;
	
	public ThemeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ThemeDTO(String themeCode, String themeName, String themePath, String imagePath) {
		super();
		this.themeCode = themeCode;
		this.themeName = themeName;
		this.themePath = themePath;
		this.imagePath = imagePath;
	}
	public String getThemeCode() {
		return themeCode;
	}
	public String getThemeName() {
		return themeName;
	}
	public String getThemePath() {
		return themePath;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setThemeCode(String themeCode) {
		this.themeCode = themeCode;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public void setThemePath(String themePath) {
		this.themePath = themePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	@Override
	public String toString() {
		return "ThemeDTO [themeCode=" + themeCode + ", themeName=" + themeName + ", themePath=" + themePath
				+ ", imagePath=" + imagePath + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((imagePath == null) ? 0 : imagePath.hashCode());
		result = prime * result + ((themeCode == null) ? 0 : themeCode.hashCode());
		result = prime * result + ((themeName == null) ? 0 : themeName.hashCode());
		result = prime * result + ((themePath == null) ? 0 : themePath.hashCode());
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
		ThemeDTO other = (ThemeDTO) obj;
		if (imagePath == null) {
			if (other.imagePath != null)
				return false;
		} else if (!imagePath.equals(other.imagePath))
			return false;
		if (themeCode == null) {
			if (other.themeCode != null)
				return false;
		} else if (!themeCode.equals(other.themeCode))
			return false;
		if (themeName == null) {
			if (other.themeName != null)
				return false;
		} else if (!themeName.equals(other.themeName))
			return false;
		if (themePath == null) {
			if (other.themePath != null)
				return false;
		} else if (!themePath.equals(other.themePath))
			return false;
		return true;
	}

	
	
}
