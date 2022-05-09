package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.LectureDAO;
import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.LecSubjectVO;

public class prolectureSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 교수 아이디로 교수 강의 목록 리스트 가져오기

		int pro_id = Integer.parseInt(request.getParameter("pro_id"));

		// 1. DB데이터 조회하고 가져오기
		List<LecSubjectVO> list = ProfessorDAO.lecSelect(pro_id);
		
		// 2. DB데이터 request scope 에 저장
		request.setAttribute("list", list);
		
		// 3. professorSelectList.jsp 페이지로 위임(전달) 처리
		return "proLectureSelectList.jsp";

	}

}
