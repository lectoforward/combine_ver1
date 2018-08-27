package com.lecto.forward.service;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lecto.forward.dto.BoardDTO;
import com.lecto.forward.persistence.ArticleViewMapper;
import com.lecto.forward.persistence.BoardMapper;
import com.lecto.forward.persistence.MemberMapper;
import com.lecto.forward.vo.ChartVO;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private ArticleViewMapper articleViewMapper;
	
	@Autowired
	private BoardMapper boardMapper;
	
	/** 31일치 가입자 수 정보 가져오기  */
	@Override
	public ChartVO[] RegDateCountByDate() {
		
		ChartVO[] chartList = new ChartVO[31];

		try {
			List<String> list = memberMapper.searchRegDateByDate();	
			Map<String, ChartVO> chartMap = new TreeMap<String, ChartVO>();
		
			/** 31일 정보 만들기  */
			for(int i=30; i>=0; i--) {
				ChartVO vo = new ChartVO();
				Calendar mon = Calendar.getInstance();
				mon.add(Calendar.DATE, -i);
				String beforeDay = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
				vo.setDate(beforeDay);
				vo.setCount(0);
				chartList[30-i] = vo;
				chartMap.put(beforeDay, vo);
			}

			if(list != null && !list.isEmpty() && list.size() != 0) {
				for(String s:list) {
					if(chartMap.containsKey(s)) {
						chartMap.get(s).setCount(chartMap.get(s).getCount()+1);
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return chartList;
	}
	
	/** 13개월치 가입자 수 정보 받아오기 */
	@Override
	public ChartVO[] RegDateCountByMonth() {
		
		ChartVO[] chartList = new ChartVO[13];
		
		try {
			/** 13개월치 정보 만들기  */
			for(int i=12; i>=0; i--) {
				ChartVO vo = new ChartVO();
				Calendar mon = Calendar.getInstance();
				mon.add(Calendar.MONTH, -i);
				String beforeDay = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
				vo.setDate(beforeDay);
				vo.setCount(memberMapper.searchRegDateByMonth(beforeDay));
				chartList[12-i] = vo;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return chartList;
	}

	@Override
	public ChartVO[] articleCountByDate(String boardName) {
		
		String boardCode = "bo1";
		ChartVO[] chartList = new ChartVO[31];
		
		try {
			List<BoardDTO> list = boardMapper.searchBoardAll();
			for(BoardDTO dto :list) {
				if(dto.getBoardName().equals(boardName)) {
					boardCode = dto.getBoardCode();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			List<String> articleList = articleViewMapper.searchArticleByDate(boardCode);
			Map<String, ChartVO> chartMap = new TreeMap<String, ChartVO>();
			
			for(int i=30; i>=0; i--) {
				ChartVO vo = new ChartVO();
				Calendar mon = Calendar.getInstance();
				mon.add(Calendar.DATE, -i);
				String beforeDay = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
				vo.setDate(beforeDay);
				vo.setCount(0);
				chartList[30-i] = vo;
				chartMap.put(beforeDay, vo);
			}

			if(articleList != null && !articleList.isEmpty()) {
				for(String s:articleList) {
					if(chartMap.containsKey(s)) {
						chartMap.get(s).setCount(chartMap.get(s).getCount()+1);
					}
				}
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return chartList;
	}

	@Override
	public ChartVO[] articleCountByMonth(String boardName) {
		
		String boardCode = "bo1";
		ChartVO[] chartList = new ChartVO[13];
		
		try {
			List<BoardDTO> list = boardMapper.searchBoardAll();
			for(BoardDTO dto :list) {
				if(dto.getBoardName().equals(boardName)) {
					boardCode = dto.getBoardCode();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			for(int i=12; i>=0; i--) {
				ChartVO vo = new ChartVO();
				Calendar mon = Calendar.getInstance();
				mon.add(Calendar.MONTH, -i);
				String beforeDay = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
				vo.setDate(beforeDay);
				vo.setCount(articleViewMapper.searchArticleByMonth(boardCode, beforeDay));
				chartList[12-i] = vo;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return chartList;
	}
}
