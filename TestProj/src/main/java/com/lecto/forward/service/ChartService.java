package com.lecto.forward.service;

import com.lecto.forward.vo.ChartVO;

public interface ChartService {
	/** 31일치 가입자 수 정보 리턴하는 메소드 */
	public ChartVO[] RegDateCountByDate();
	
	/** 13개월치 가입자 수 정보 리턴하는 메소드 */
	public ChartVO[] RegDateCountByMonth();
	
	/** 31일치 가입자 수 정보 리턴하는 메소드 */
	public ChartVO[] articleCountByDate(String boardName);
	
	/** 13개월치 가입자 수 정보 리턴하는 메소드 */
	public ChartVO[] articleCountByMonth(String boardName);
	
}
