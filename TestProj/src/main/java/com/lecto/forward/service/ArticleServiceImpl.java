package com.lecto.forward.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lecto.forward.dto.ArticleDTO;
import com.lecto.forward.persistence.ArticleMapper;
import com.lecto.forward.persistence.ArticleViewMapper;
import com.lecto.forward.vo.ArticleVO;

@Service
public class ArticleServiceImpl implements ArticleService{
	
	@Inject
	ArticleMapper articleMapper;
	
	@Inject
	ArticleViewMapper articleViewMapper;
	
	public boolean addArticle(ArticleDTO articleDTO) {
		if(articleDTO ==null) {
			return false;
		}
		
		String code = generateCode();
		articleDTO.setArticleCode(code);
		try {
			articleMapper.addArticle(articleDTO);
		} catch (Exception e) {
			System.out.println("articleAdd메소드 실패");
			e.printStackTrace();
		}
		return true;
	}
	
	
	public boolean updateArticle(ArticleDTO articleDTO) {		
		if(articleDTO == null) {
			return false;
		}
		try {
			articleMapper.updateArticleParam(articleDTO);
		} catch (Exception e) {
			System.out.println("updateArticle메소드 실패");
			e.printStackTrace();
		}
		return true;
	}
	
	
	public boolean deleteArticle(String articleCode) {
		System.out.println("삭제 매소드 입구 진입햇다");
		if(articleCode==""||articleCode==null) {
			return false;
		}
		System.out.println("삭제 매소드 진입햇다");
		try {
			articleMapper.deleteArticleCode(articleCode);
		} catch (Exception e) {
			System.out.println("deleteArticle메소드 실패");
			e.printStackTrace();
		}
		return true;
	}
	
	/* articleCode들을 배열로 받아 해당하는 article들을 삭제 */
	public boolean deleteArticles(String[] articleCodes) {
		if(articleCodes == null) {
			return false;
		}
		List<String> codeList = new ArrayList<String>();
		for(String articleCode:articleCodes) {
			codeList.add(articleCode);
		}
		try {
			articleMapper.deleteArticleCodes(codeList);
		} catch (Exception e) {
			System.out.println("deleteArticles메소드 실패!!");
			e.printStackTrace();
		}
		return true;
	}
	
	/* 검색 시 사용 */
	public List<ArticleVO> searchArticle(String boardCode, String searchWay, String keyword){
		List<ArticleVO> list = null;
		String searchWayCode = null;
		
		if(searchWay.equals("subject")) {
			searchWayCode = "1";
		}else if(searchWay.equals("content")) {
			searchWayCode = "2";
		}else if(searchWay.equals("writer")) {
			searchWayCode = "3";
		}else {;}
		
		
		try {
			list = articleViewMapper.searchArticleKeyword(boardCode, searchWayCode, keyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/* 해당 게시판에 있는 모든 게시글 가져오기 */
	public List<ArticleVO> searchArticle(String boardCode) {
		List<ArticleVO> articles = null;
		try {
			articles = articleViewMapper.searchArticle(boardCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articles;
	}
	/** 게시글 자세히 보기 할 때 사용 */
	public ArticleVO searchArticle(String articleCode, int flag) {
		ArticleVO vo = null;
		try {
			vo = articleViewMapper.searchArticleCode(articleCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	public String generateCode() {
		/* db에서 데이터 로드 */
		Map<Integer,ArticleDTO> sortMap = new TreeMap<Integer, ArticleDTO>();
		List<ArticleDTO> list = null;
		String code = null;
		try {
			list = articleMapper.searchAllArticle();
			for(ArticleDTO dto :list) {
				System.out.println(dto.toString());
			}
			if(list.size() == 0 || list.isEmpty() || list == null) {
				code = "ar1";
			} else{
				System.out.println("Map에 넣으려고 들어왔어");
				for(ArticleDTO dto:list){
					dto.getArticleCode().substring(2);
					System.out.println("subString 했어 !!!!!::==->"+dto.getArticleCode().substring(2));
			        int num = Integer.parseInt(dto.getArticleCode().substring(2));
			        System.out.println("num 찍어보기!!!!!!!!!::::=->" + num);
					sortMap.put(num, dto);
					System.out.println("Map에 넣으면서 제대로 들어갔나 테스트 ::: "+sortMap.get(num));
				}
				int last = ((TreeMap<Integer, ArticleDTO>) sortMap).lastKey();	
	
				code = "ar" + String.valueOf(last+1);
				System.out.println("articleCode생성!!!!!!!!!!!!! ->"+code);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return code;
	}
	
}
