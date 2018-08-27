package com.lecto.forward.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lecto.forward.dto.BoardDTO;
import com.lecto.forward.dto.Criteria;
import com.lecto.forward.dto.MemberDTO;
import com.lecto.forward.dto.MemberGradesDTO;
import com.lecto.forward.persistence.BoardMapper;
import com.lecto.forward.persistence.BoardMemberListViewMapper;
import com.lecto.forward.persistence.ManagerViewMapper;
import com.lecto.forward.persistence.MemberArticleViewMapper;
import com.lecto.forward.persistence.MemberGradesMapper;
import com.lecto.forward.persistence.MemberMapper;
import com.lecto.forward.vo.BoardMemberListVO;
import com.lecto.forward.vo.ManagerVO;
import com.lecto.forward.vo.MemberArticleVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private MemberGradesMapper memberGradesMapper;
	@Autowired
	private BoardMapper boardMapper;
	@Autowired
	private BoardMemberListViewMapper bmlViewMapper;
	@Autowired
	private ManagerViewMapper managerViewMapper;
	@Autowired
	private MemberArticleViewMapper memberArticleViewMapper;
	
	public boolean addMember(MemberDTO memberDTO) {
		// 멤버 디에이오 가서 멤버 추가
		if( !nullCheck(new String[]{memberDTO.getMemberId(), memberDTO.getMemberPwd(), memberDTO.getMemberName(), memberDTO.getMemberNickname(),
				memberDTO.getMemberBirth(), memberDTO.getMemberMail(), memberDTO.getMemberPhone(),
				memberDTO.getMemberAddress()})){
			return false;
		}
		boolean flag = false;
		try{
			memberMapper.addMember(memberDTO);
		
			List<BoardDTO> list = boardMapper.searchBoardAll();
			for(BoardDTO dto: list){
				if(!dto.getBoardName().equals("공지게시판")){
					// 여기서 코드 생성 해줘야함 boardService.generateBoardCode();
					try {
						MemberGradesDTO mg = new MemberGradesDTO(boardService.generateBoardMemberGrade(),dto.getBoardCode(),memberDTO.getMemberId(),1);
						memberGradesMapper.addMemberGradesDTO(mg);
						flag = true;
					} catch(Exception e) {
						e.printStackTrace();
						flag = false;
					}
				}
			}
		}catch(Exception ex){
			ex.printStackTrace();
			flag = false;
		}
		// 그레이드멤버 가서 게시판별 등급 추가
		return flag;
		
	}
	//////// 2018-08-04 08:54 수정
	public boolean addMember(MemberDTO memberDTO, String boardName) {
		if( !nullCheck(new String[]{memberDTO.getMemberId(), memberDTO.getMemberPwd(), memberDTO.getMemberName(), memberDTO.getMemberNickname(),
				memberDTO.getMemberBirth(), memberDTO.getMemberMail(), memberDTO.getMemberPhone(),
				memberDTO.getMemberAddress()})){
			return false;
		}
		
		if(boardName == null) return false;
		boolean flag = false;
		try{
			memberMapper.addMember(memberDTO);
		
			List<BoardDTO> list =  boardMapper.searchBoardAll();
			List<BoardDTO> blist = new ArrayList<BoardDTO>();
			for(BoardDTO obj: list){
				blist.add(obj);
			}
			// String boardMemberGrade, String boardCode, String memberId, int gradeNum
			for(BoardDTO dto: blist){
				if(dto.getBoardName().equals(boardName)){
					try {
						MemberGradesDTO mg = new MemberGradesDTO(boardService.generateBoardMemberGrade(),dto.getBoardCode(), memberDTO.getMemberId(),-1);
						memberGradesMapper.addMemberGradesDTO(mg);
						flag = true;
					} catch(Exception e) {
						e.printStackTrace();
						flag = false;
					}
				}
			}
		} catch(Exception ex) {
			ex.printStackTrace();
			flag = false;
		}
		// 그레이드멤버 가서 게시판별 등급 추가
		return flag;
	}
	// 멤바 수정
	public boolean updateMember(MemberDTO memberDTO) {
		// 멤버 디에이오 가서 멤버 추가
		if( !nullCheck(new String[]{memberDTO.getMemberId(), memberDTO.getMemberPwd(), memberDTO.getMemberName(), memberDTO.getMemberNickname(),
				memberDTO.getMemberBirth(), memberDTO.getMemberMail(), memberDTO.getMemberPhone(),
				memberDTO.getMemberAddress()})){
			return false;
		}
		try {		
			System.out.println(memberDTO.toString());
			memberMapper.updateMember(memberDTO);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;		
	}
	
	// 관리자 비번 수정
	public boolean updateMemberPwd(String memberId, String newPwd) { 
		if( !nullCheck(new String[]{memberId, newPwd}))
			return false;
		try {
			memberMapper.updatePwd(memberId, newPwd);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;		
	}
	
	public boolean updateMember(MemberDTO memberDTO, String newBoardName) {
		if( !nullCheck(new String[]{newBoardName}))
			return false;
		
		boolean flag = false;
		if(updateMember(memberDTO)){
			try {
				memberGradesMapper.deleteMemberId(memberDTO.getMemberId());

				List<BoardDTO> list =  boardMapper.searchBoardAll();
				List<BoardDTO> blist = new ArrayList<BoardDTO>();
				for(BoardDTO obj: list){
					blist.add(obj);
				}
				for(BoardDTO dto: blist){
					if(dto.getBoardName().equals(newBoardName)){
						try {
							// 여기서 코드 생성 해줘야함 boardService.generateBoardCode();
							MemberGradesDTO mg = new MemberGradesDTO(boardService.generateBoardMemberGrade(),dto.getBoardCode(), memberDTO.getMemberId(), -1);
							memberGradesMapper.addMemberGradesDTO(mg);
							flag = true;
						}catch(Exception e) {
							e.printStackTrace();
							flag = false;
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				flag = false;
			}
		}
		return flag;
	}
	
	public boolean deleteMember(String memberId) {
		// 멤버 디에이오 가서 멤버 추가
		if( !nullCheck(new String[]{memberId})){
			return false;
		}
		try {
			memberMapper.deleteMember(memberId);
			try {
				memberGradesMapper.deleteMemberId(memberId);
			}catch(Exception e) {
				e.printStackTrace();
			}
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	///////////////////////
	public boolean deleteMember(String[] memberIds) {
		for(String id:memberIds){
			if(!deleteMember(id)){
				return false;
			}
		}
		return true;
	}
	
	/** 로그인 */
	public MemberDTO login(String memberId) {
		MemberDTO memberDTO=null;
		try {
			memberDTO =  memberMapper.login(memberId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberDTO;
	}

	/** 로그인 부분 수정됨 */
	public MemberDTO searchMember(String memberId, String memberPwd) {
		if( !nullCheck(new String[]{memberId, memberPwd})){
			return null;
		}
		MemberDTO dto = null;
		MemberDTO loginMemberDTO = null;
		try {
			dto = memberMapper.searchId(memberId);
			if(dto!=null) {
				if(dto.getMemberPwd().equals(memberPwd)) {
					loginMemberDTO = memberMapper.login(memberId);
				}
			}
			return loginMemberDTO;
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(dto != null){
			return dto;
		}
		return null;
	}
	
	///////////////////////////////////
	
	public MemberDTO searchMember(MemberDTO memberDTO) {
		if( !nullCheck(new String[]{memberDTO.getMemberId(), memberDTO.getMemberPwd(), memberDTO.getMemberName(), memberDTO.getMemberNickname(),
				memberDTO.getMemberBirth(), memberDTO.getMemberMail(), memberDTO.getMemberPhone(),
				memberDTO.getMemberAddress(), memberDTO.getRegisterDate()})){
			return null;
		}
		MemberDTO dto = null;
		try {
			dto = memberMapper.searchMember(memberDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(dto != null){
			return dto;
		}
		return null;
	}
	// 회원이 지 회원 정보 조회 (게시글 수)
	public MemberArticleVO[] searchMemberInfo(String memberId) {
		if( !nullCheck(new String[]{memberId})){
			return null;
		}
		MemberArticleVO[] arr = null;
		List<MemberArticleVO> list = null;
		try {
			list = memberArticleViewMapper.searchMemberIdArticle(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null && !list.isEmpty()) {
			arr = new MemberArticleVO[list.size()];
			for(int i=0; i<list.size(); i++)
				arr[i] = list.get(i);
		}
		return arr;
	}
	
	public MemberDTO searchMember(String memberId) {
		if( !nullCheck(new String[]{memberId})){
			return null;
		}
		
		MemberDTO dto = null;
		try {
			dto = memberMapper.searchId(memberId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public String searchMemberId(String memberName, String memberPhone, String memberMail) {
		if( !nullCheck(new String[]{memberName, memberPhone, memberMail}))
			return null;
		
		MemberDTO dto = null;
		try {
			dto = memberMapper.searchFindId(memberName, memberPhone, memberMail);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(dto != null)
			return dto.getMemberId();
		return null;
	}
	
	public String searchMemberPwd(String memberId, String memberPhone, String memberMail) {
		if( !nullCheck(new String[]{memberId, memberPhone, memberMail}))
			return null;
		
		MemberDTO dto = null;
		try {
			dto = memberMapper.searchFindPwd(memberId, memberPhone, memberMail);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(dto != null)
			return dto.getMemberPwd();
		return null;
	}
	
	public Object[] searchBoardMember(String boardKey, Criteria cri) {
		Object[] list = null;
		List<BoardMemberListVO> vos = null;
		if( !nullCheck(new String[]{boardKey}))
			return null;
		
		try{
			if(boardKey.substring(0, 2).equals("bo")){
				System.out.println(boardKey);
				vos = bmlViewMapper.searchBoardCode(boardKey, cri);
			}
			else{
				vos = bmlViewMapper.searchBoardName(boardKey, cri);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		if(vos != null && !vos.isEmpty()) {
			list = new Object[vos.size()];
			for(int i=0;i<vos.size();i++)
				list[i] = vos.get(i);
		}
		return list;
	}
	
	public Object[] searchBoardMember(String boardName, String searchWay, String keyword, Criteria cri) {
		if( !nullCheck(new String[]{boardName,searchWay, keyword}))
			return null;
		
		Object[] obj = null;
		List<BoardMemberListVO> list = new ArrayList<BoardMemberListVO>();
		try {
			switch(searchWay){
			case "아이디":
				list = bmlViewMapper.searchBNMemberId(boardName, keyword, cri);
				break;
			case "닉네임":
				list = bmlViewMapper.searchBNMemberNickname(boardName, keyword, cri);
				break;
			case "등급명":
				obj = searchBoardGradeMebers(boardName, keyword, cri);
				break;
			}
			if(list != null && !list.isEmpty()) {
				obj = new Object[list.size()];
				for(int i=0;i<list.size();i++)
					obj[i] = list.get(i);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	public Object[] searchBoardGradeMebers(String boardName, String gradeName, Criteria cri) {
		if( !nullCheck(new String[]{boardName, gradeName}))
			return null;
		Object[] objs = null;
		List<BoardMemberListVO> list = null;
		try {
			list = bmlViewMapper.searchBNGradeName(boardName, gradeName, cri);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(list != null && !list.isEmpty()) {
			objs = new Object[list.size()];
			for(int i=0;i<list.size();i++)
				objs[i] = list.get(i);
		}
		return objs;
	}
	
	public Object[] searchManager(String searchWay, String keyword) {
		if( !nullCheck(new String[]{searchWay, keyword}))
			return null;
		Object[] objs = null;
		List<Object> list = new ArrayList<Object>();
		
		try {
			switch(searchWay){
			case "아이디":
				list.add(managerViewMapper.searchMemberId(keyword));
				break;
			case "이름":
				for(Object o:managerViewMapper.searchMemberName(keyword)){
					list.add(o);
				}
				break;
			case "게시판명":
				list.add(managerViewMapper.searchBoardName(keyword));
				break;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		objs = new Object[list.size()];
		for(int i=0; i<list.size(); i++){
			objs[i] = list.get(i);
		}
		return objs;
	}
	
	public Object[] searchManager() {
		Object[] arr = null;
		System.out.println("멤버서비스 서치매니저");
		List<ManagerVO> list = null;
		
		try {
			list = managerViewMapper.searchManagerViewAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		arr = new Object[list.size()];
		for(int i=0; i<list.size(); i++){
			arr[i] = list.get(i);
		}
		return arr;
	}
	// 모든 보드 찾기
	public Object[] searchBoard(){
		Object[] arr = null;
		List<BoardDTO> list = null;
		try {
			list = boardMapper.searchBoardAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		arr = new Object[list.size()];
		for(int i=0; i<list.size(); i++){
			arr[i] = list.get(i);
		}
		return arr;
	}
	
	public boolean isManager(String memberId){
		if(memberId == null) return false;
		
		ManagerVO vo = null;
		try {
			vo = managerViewMapper.searchMemberId(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(vo != null)
			return true;
		else return false;
	}

	/*아이디 중복검사*/
	public boolean searchId(String memberId){
		boolean flag = false;
		MemberDTO memberDTO = null;
		try {
			memberDTO = memberMapper.searchId(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(memberDTO == null){
			//회원이 없으면 true반환
			flag = true;
		}
		return flag;
	}
	
	/*닉네임 중복검사*/
	public boolean searchNickname(String memberNickname){
		boolean flag = false;
		MemberDTO memberDTO = null;
		try {
			memberDTO = memberMapper.searchNickname(memberNickname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(memberDTO == null){
			flag = true;
		}
		
		return flag;
	}
	
	/*이메일 중복검사*/
	public boolean searchMail(String memberMail){
		boolean flag = false;
		MemberDTO memberDTO = null;
		try {
			memberDTO = memberMapper.searchMail(memberMail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(memberDTO == null){
			flag = true;
		}
		return flag;
	}
	
	/*폰번호 중복검사*/
	public boolean searchPhone(String memberPhone){
		boolean flag = false;
		MemberDTO memberDTO = null;
		try {
			memberDTO = memberMapper.searchPhone(memberPhone);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(memberDTO == null){
			flag = true;
		}
		return flag;
	}

	@Override
	public int idCheck(String memberId) throws Exception {
		return memberMapper.idCheck(memberId);
	}
	
	@Override
	public int emailCheck(String memberMail) throws Exception{
		return memberMapper.emailCheck(memberMail);
	}
	
	@Override
	public int phoneCheck(String memberPhone) throws Exception{
		return memberMapper.phoneCheck(memberPhone);
	}
	
	@Override
	public int nicknameCheck(String memberNickname) throws Exception{
		return memberMapper.nicknameCheck(memberNickname);
	}
	
	/**아이디찾기(비동기)*/
	@Override
	public int findId(String memberName, String memberPhone, String memberMail) throws Exception {
		System.out.println("aa"+memberName);
		return memberMapper.findId(memberName, memberPhone, memberMail);
	}
	
	public int findPwd(String memberId, String memberPhone, String memberMail) throws Exception{
		System.out.println(memberMapper.findPwd(memberId, memberPhone, memberMail));
		return memberMapper.findPwd(memberId, memberPhone, memberMail);
	}
	
	public boolean nullCheck(String[] str)
	{
		if(str == null){return false;}
		for(int i=0;i<str.length;i++)
		{
			if(str[i] == null )
			{
				return false;
			}
		}
		return true;
	}

}