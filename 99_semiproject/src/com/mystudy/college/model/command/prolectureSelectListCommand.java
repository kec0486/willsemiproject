package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.LecSubjectVO;
import com.mystudy.college.model.vo.ProfessorVO;

public class prolectureSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 교수 아이디로 교수 강의 목록 리스트 가져오기
		System.out.println("> prolectureSelectListCommand 실행");
		
		// 교수 개인정보조회
		// 파라미터 받은 것 가져오기
		String pro_id = request.getParameter("pro_id");
		System.out.println("pro_id : "+pro_id);
		
		//교수(pro_id로) 데이터 조회 후 콘솔 출력
		int proId = Integer.parseInt(pro_id);
		List<LecSubjectVO> lsvo = ProfessorDAO.lecSelect(proId);
		System.out.println("lsvo : "+lsvo);
		
		
		// 2. DB데이터 request scope 에 저장
		request.setAttribute("lsvo", lsvo);
		
		
		// 3. professorSelectList.jsp 페이지로 위임(전달) 처리
		return "proLectureSelectList.jsp";

	}

}
