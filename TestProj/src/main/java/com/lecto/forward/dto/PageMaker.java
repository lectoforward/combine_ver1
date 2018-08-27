package com.lecto.forward.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 10;
	
	private Criteria cri;
	
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcDate(); 
	}
	private void calcDate() {
		// 현재 페이지 번호를 한 번에 몇 페이지 보여주나 그 수로 나누면
		// 현재 페이지 기준의 endPage가 나옴.
		endPage = (int) (Math.ceil(cri.getPage() /
				(double) displayPageNum) * displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1;
		
		// 이전에 구한 endPage 값과 계산된 결과를 비교해
		int tempEndPage = (int) (Math.ceil(totalCount /
				(double) cri.getPerPageNum()));
		// 이전 꺼가 계산한 거보다 크면, 이전꺼에 계산한 걸 넣어
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		// 스타트 페이지가 1이니? 그럼 prev는 없어야 하니 false구나 
		prev = startPage == 1 ? false : true;
		
		// 뒤에 데이터가 더 남아있냐? 없으면 false로, 있으면 더 보여야 하니 true로 
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	}
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean getPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean getNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public Criteria getCri() {
		return cri;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = 
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.build();
		return uriComponents.toUriString();
	}
	
}
