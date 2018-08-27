package com.lecto.forward.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lecto.forward.service.BoardService;
import com.lecto.forward.service.ChartService;
import com.lecto.forward.vo.BoardSearchVO;
import com.lecto.forward.vo.ChartVO;

@Controller
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/ad_regchart", method=RequestMethod.GET)
	public ModelAndView regDateChartGET(ModelAndView mv, HttpSession session){
		
		String sessionId = "admin";
		mv.setViewName("/ad_regchart");

		// 일 별
		ChartVO[] datelist = chartService.RegDateCountByDate();
		
		String dateStr = "[";
		dateStr += "['날짜', '가입자 수'],";
		int num1 = 0;
		for(ChartVO vo:datelist) {
			dateStr += "['";
			dateStr += vo.getDate();
			dateStr += "',";
			dateStr += vo.getCount();
			dateStr += "]";
			
			num1++;
			if(num1 < datelist.length) {
				dateStr += ",";
			}
		}
		dateStr += "]";
		mv.addObject("today", datelist[30].getDate());
		mv.addObject("todayCnt", datelist[30].getCount());
		mv.addObject("dateStr", dateStr);
		
		// 월 별
		ChartVO[] monthlist = chartService.RegDateCountByMonth();
		
		String monthStr = "[";
		monthStr += "['날짜', '가입자 수'],";
		int num2 = 0;
		for(ChartVO vo:monthlist) {
			monthStr += "['";
			monthStr += vo.getDate();
			monthStr += "',";
			monthStr += vo.getCount();
			monthStr += "]";
			
			num2++;
			if(num2 < monthlist.length) {
				monthStr += ",";
			}
		}
		monthStr += "]";
		Calendar mon = Calendar.getInstance();
		mv.addObject("thisMonth", mon.get(Calendar.MONTH)+1);
		mv.addObject("thisMonthCnt", monthlist[12].getCount());
		mv.addObject("monthStr", monthStr);
		
		return mv;
	}

	/** 게시글 수 통계 보기로 이동 */
	@RequestMapping(value="/ad_articlechart", method=RequestMethod.GET)
	public String articleChartGET(Model model, HttpSession session){

		String sessionId = "admin";

		if(sessionId.equals("admin")){
			List<BoardSearchVO> boardList;
			try {
				boardList = boardService.searchBoard();
				model.addAttribute("boardList", boardList);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "/ad_articlechart";
	}
	
	/** 게시판 게시글 수 통계 보기로 이동 */
	@RequestMapping(value="/ad_articlechart/date", method=RequestMethod.POST)
	public ModelAndView articleDateChartPOST(@RequestParam("boardSelect")String boardName, ModelAndView mv, HttpSession session){

		String sessionId = "admin";
		mv.setViewName("/ad_articlechart");
		System.out.println(boardName);
		
		if(sessionId.equals("admin")) {
			
			ChartVO[] datelist = chartService.articleCountByDate(boardName);
			
			String dateStr = "[";
			dateStr += "['날짜', '가입자 수'],";
			int num1 = 0;
			for(ChartVO vo:datelist) {
				dateStr += "['";
				dateStr += vo.getDate();
				dateStr += "',";
				dateStr += vo.getCount();
				dateStr += "]";
				
				num1++;
				if(num1 < datelist.length) {
					dateStr += ",";
				}
			}
			dateStr += "]";
			mv.addObject("today", datelist[30].getDate());
			mv.addObject("todayCnt", datelist[30].getCount());
			mv.addObject("dateStr", dateStr);
			
			// 월 별
			ChartVO[] monthlist = chartService.articleCountByMonth(boardName);
			
			String monthStr = "[";
			monthStr += "['날짜', '가입자 수'],";
			int num2 = 0;
			for(ChartVO vo:monthlist) {
				monthStr += "['";
				monthStr += vo.getDate();
				monthStr += "',";
				monthStr += vo.getCount();
				monthStr += "]";
				
				num2++;
				if(num2 < monthlist.length) {
					monthStr += ",";
				}
			}
			monthStr += "]";
			Calendar mon = Calendar.getInstance();
			mv.addObject("thisMonth", mon.get(Calendar.MONTH)+1);
			mv.addObject("thisMonthCnt", monthlist[12].getCount());
			mv.addObject("monthStr", monthStr);
			mv.addObject("boardName", boardName);
		}
		
		List<BoardSearchVO> boardList;
		try {
			boardList = boardService.searchBoard();
			mv.addObject("boardList", boardList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
