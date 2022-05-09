package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.dao.EmployeeDAO;
import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.LecSubjectVO;
import com.mystudy.college.model.vo.ProfessorVO;

public class professorSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 교수 개인정보조회
		// 파라미터 받은 것 가져오기
		int selectId = Integer.parseInt(request.getParameter("selectId"));

		// 1. DB데이터 조회하고 가져오기
		List<ProfessorVO> list = ProfessorDAO.selectId(selectId);
		// 2. DB데이터 request scope 에 저장
		request.setAttribute("list", list);
		// 3. professorSelectList.jsp 페이지로 위임(전달) 처리
		return "professorSelectList.jsp";
	}

}
