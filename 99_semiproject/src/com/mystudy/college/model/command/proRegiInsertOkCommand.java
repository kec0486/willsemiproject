package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.RegistrationVO;


public class proRegiInsertOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 학생성적 입력 
		String re_term = request.getParameter("re_term");
		int re_score = Integer.parseInt(request.getParameter("re_score"));
		String re_grade = request.getParameter("re_grade");
		int sub_code = Integer.parseInt(request.getParameter("sub_code"));
		int st_id = Integer.parseInt(request.getParameter("st_id"));
		
		RegistrationVO rvo = new RegistrationVO(re_term, re_score, re_grade, sub_code, st_id);
		rvo.setRe_term(re_term);
		rvo.setRe_score(re_score);
		rvo.setRe_grade(re_grade);
		rvo.setSub_code(sub_code);
		rvo.setSt_id(st_id);
		
		System.out.println(rvo);

		// 1. DB데이터 조회하고 가져오기
		List<RegistrationVO> list = ProfessorDAO.proRegiInsert(rvo);
		
		// 2. DB데이터 request scope 에 저장
		request.setAttribute("list", list);
		
		// 3. 목록으로 처리
		return "proStuRegi.jsp";

	}

}
