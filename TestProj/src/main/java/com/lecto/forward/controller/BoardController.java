package com.lecto.forward.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lecto.forward.dto.BoardDTO;
import com.lecto.forward.dto.GradeDTO;
import com.lecto.forward.dto.MemberGradesDTO;
import com.lecto.forward.service.BoardService;
import com.lecto.forward.vo.BoardSearchVO;

@Controller
public class BoardController{

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String startPage() {
		
		return "/index";
	}
	
	@RequestMapping(value="/ad_addboardView", method=RequestMethod.POST)
	public String addBoard(@Param("boardCode")String boardCode) throws Exception{
		System.out.println(boardCode+"하하");	
		return "/ad_addboard";
	}
	
	/*@RequestMapping(value="/ad_addboard", method=RequestMethod.POST)
	public String addBoard2(String boardName, String gradeDate, String themeCode, String divgrade,
			String gradeNum1, String gradeNum2, String gradeNum3, String gradeName1, String gradeName2, String gradeName3,
			String articleCount1, String articleCount2, String articleCount3, Model model) throws Exception{
		System.out.println(boardName+"더하기 포스트");
		System.out.println(gradeDate+"그레이드 업데이트");
		System.out.println(gradeNum2+"그레이드 넘 ");
		System.out.println(articleCount3+"아티클 카운트");
		
		BoardDTO boardDTO = new BoardDTO("bo1003",boardName, gradeDate, "th1");
		
		boardService.addBoard(boardDTO);
		GradeDTO gt1= new GradeDTO(Integer.parseInt(gradeNum1),gradeName1,Integer.parseInt(articleCount1),boardDTO.getBoardCode());
		GradeDTO gt2= new GradeDTO(Integer.parseInt(gradeNum2),gradeName2,Integer.parseInt(articleCount2),boardDTO.getBoardCode());
		GradeDTO gt3= new GradeDTO(Integer.parseInt(gradeNum3),gradeName3,Integer.parseInt(articleCount3),boardDTO.getBoardCode());
		
		List<GradeDTO> gradeList = new ArrayList<GradeDTO>();
		gradeList.add(gt1);
		gradeList.add(gt2);
		gradeList.add(gt3);
		
		boardService.addGrade(gradeList);
		
		MemberGradesDTO memberGrades = new MemberGradesDTO(boardService.generateBoardMemberGrade(),boardDTO.getBoardCode(),"관리자", -1);
		boardService.addMemberGrades(memberGrades);
		model.addAttribute("boardViewList",boardService.searchBoard());
		
		return "redirect:/ad_boardlist";
	}*/

	@RequestMapping(value="/ad_addboard", method=RequestMethod.POST)
	public String addBoard2(String boardName, String gradeDate, String themeCode, String divgrade,
			@RequestParam("gradeNum")String[] gradeNum, @RequestParam("gradeName") String[] gradeName,
			@RequestParam("articleCount")String[] articleCount, Model model) throws Exception{
		
		BoardDTO boardDTO = new BoardDTO(boardService.generateBoardCode(),boardName, gradeDate, "th1");
		System.out.println(boardDTO+"********************************"+boardDTO.getBoardName());
	
		boardService.addBoard(boardDTO);
		GradeDTO gt;
		List<GradeDTO> gradeList = new ArrayList<GradeDTO>();
		for(int i=0;i<gradeNum.length;i++) {
			System.out.println(gradeNum[i]);
			System.out.println(gradeName[i]);
			System.out.println(articleCount[i]);
			gt =new GradeDTO(Integer.parseInt(gradeNum[i]),gradeName[i],Integer.parseInt(articleCount[i]),boardDTO.getBoardCode());
			
			System.out.println(gt);
			gradeList.add(gt);
		}
	
		
		boardService.addGrade(gradeList);
		
		MemberGradesDTO memberGrades = new MemberGradesDTO(boardService.generateBoardMemberGrade(),boardDTO.getBoardCode(),"관리자", -1);
		boardService.addMemberGrades(memberGrades);
		model.addAttribute("boardViewList",boardService.searchBoard());
		
		return "redirect:/ad_boardlist";
	}
	
	
	/*@RequestMapping(value="/ad_boardlist", method=RequestMethod.POST)
	public String searchBoard(String boardName,String searchWay, String keyword,Model model) {
		System.out.println(boardName+"여기");
		try {
			if (keyword != null) {
					model.addAttribute("boardViewList", boardViewList);
					model.addAttribute("boardViewList", boardService.searchBoard());
					return "ad_boardlist";
				}
			else {
				return "ad_boardlist";
			}
		}
			catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/ad_boardlist";
	}*/
	
	
	@RequestMapping(value="/a_editboard", method=RequestMethod.POST)
	public String updateBoard(Model model,String boardCode,String boardName, String gradeUpDate, String[] gradeNum, String[] gradeName, String[] articleCount) {

		try {
			System.out.println("포스트  "+boardCode);
			BoardDTO board = new BoardDTO(boardCode, boardName, gradeUpDate, "th1");
			List<GradeDTO> grades = new ArrayList<GradeDTO>();
			GradeDTO gradeDTO =null;
			System.out.println(gradeNum.length);
			for (int i = 0; i < gradeNum.length; i++) {
				gradeDTO = new GradeDTO(Integer.parseInt(gradeNum[i]),gradeName[i],Integer.parseInt(articleCount[i]), boardCode);	
				grades.add(gradeDTO);
			}
			boardService.updateBoard(board, grades);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e+" updateBoard 오류");
		}

		return "redirect:/ad_boardlist";
	}
/*	@RequestMapping(value="/a_editboard", method=RequestMethod.POST)
	public String updateBoard(Model model, @RequestParam("grade")GradeDTO[] grade) {
		System.out.println("포스트");
		for(int i=0;i<grade.length;i++) {
			System.out.println(grade[i]);
		}
		return "/ad_boardlist";
	}*/
	
	@RequestMapping(value="/a_editboard", method=RequestMethod.GET)
	public String updateBoard(@RequestParam("clickboardCode")String clickboardCode, Model model, String searchWay, String keyword, HttpServletRequest request) {
		try {
			if(clickboardCode.equals("f")) {
//				System.out.println("들어옴??");
				return searchBoard2( searchWay,  keyword, model, request);
			}else{
				System.out.println(clickboardCode + "수정");
				BoardDTO boardDTO = boardService.searchBoardCode(clickboardCode);
				System.out.println(boardDTO + "231");
				model.addAttribute("boardDTO", boardDTO);
				List<GradeDTO> gradeDTO = boardService.searchGrade(clickboardCode);
				System.out.println(gradeDTO.size()+" 사이즈 무엇?");
				for (int i = 0; i < gradeDTO.size(); i++) {
					System.out.println("안들어와?");
					System.out.println(gradeDTO.get(i));
				}
				model.addAttribute("gradeDTO", gradeDTO);
				model.addAttribute("size",gradeDTO.size());
				return "/a_editboard";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e +" 업데이트퓨 오류");
			return "/a_editboard";
		}
		
	}
	
	
	@RequestMapping(value="/ad_boardlist", method=RequestMethod.GET)
	public String searchBoard2(String searchWay, String keyword,Model model,HttpServletRequest request) {
		
		System.out.println("호오호");
		try {
			List<BoardSearchVO> viewList = new ArrayList<BoardSearchVO>();
			List<Object> obj = new ArrayList<Object>();
			if(keyword==null|| keyword.isEmpty()) {
				System.out.println("여기 널");
				model.addAttribute("boardViewList", boardService.searchBoard());
			}else {
				System.out.println(keyword);
				obj = Arrays.asList(request.getAttribute("list"));
				for(int i=0;i<obj.size();i++) {
					viewList.add((BoardSearchVO)obj.get(i));
				}
				for(int i=0;i<viewList.size();i++) {
					System.out.println(viewList.get(i));
				}
				model.addAttribute("boardViewList", viewList);
				model.addAttribute("mas", "success");
			}
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e+"서치 오류");
		
		}
		return "/ad_boardlist";
	}
	
	
	@RequestMapping(value="/searchBoardWay", method=RequestMethod.POST	)
	public String searchBoard(String searchWay,String boardCodeforarticle, String keyword,Model model, HttpServletRequest request) throws Exception{
		System.out.println(searchWay);
		System.out.println(keyword);
		System.out.println(boardCodeforarticle+"???");
		if(keyword==null || keyword.isEmpty()) {
//			System.out.println("하하하22");
			model.addAttribute("boardViewList", boardService.searchBoard());
			
		}else {
			List<BoardSearchVO> list = boardService.searchBoard(searchWay, keyword);
			request.setAttribute("list", list);
			model.addAttribute("boardViewList", list);
			model.addAttribute("msg", "success");
//			return searchBoard2(searchWay, keyword, model, request);
		}
		return "/ad_boardlist";
	}
	
	@RequestMapping(value="/deleteBoardList", method =RequestMethod.GET)
	public String deleteBoardListGET(HttpServletRequest request,  String boardName2,Model model) throws Exception{
		System.out.println("딜리트 겟");
		System.out.println(boardName2+"보드코드 겟");
//		String[] str = request.getParameterValues("boardName2");
		
//		for(int i=0;i<str.length;i++) {
//			System.out.println(str[i]);
//		}
//		
//		System.out.println(request.getParameter("boardCode"));
		model.addAttribute("boardViewList",boardService.searchBoard());	
		return "redirect:/ad_boardlist";
	}
	
	@RequestMapping(value="/deleteBoardList", method=RequestMethod.POST)
	public String deleteBoardList(@RequestParam("boardCode00")String[] boardCodes) throws Exception{
		System.out.println("딜리트 들어옴");
//		System.out.println(boardName2);
		
		ArrayList<String> boardCodeList = new ArrayList<String>(Arrays.asList(boardCodes));
		System.out.println(boardCodeList.size());
		for(int i=0;i<boardCodes.length;i++) {
			System.out.println(boardCodes[i]);
			System.out.println(boardCodeList.get(i));
		}
		
		boardService.deleteBoard(boardCodeList);

		return "redirect:/ad_boardlist";
	}
	
}