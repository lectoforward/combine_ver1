package com.lecto.forward.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lecto.forward.dto.ThemeDTO;

public interface ThemeMapper {
	public void addTheme(@Param("themeCode")String themeCode,@Param("themeName")String themeName, @Param("imagePath")String imagePath,@Param("themePath")String themePath);
	public void addThemeParam(ThemeDTO themeDTO);
	public void addThemeParams(List<ThemeDTO> themes);
	public int deleteThemeParam(@Param("themeCode")String themeCode);
	public int deleteThemeParams(List<ThemeDTO> themes);

}
