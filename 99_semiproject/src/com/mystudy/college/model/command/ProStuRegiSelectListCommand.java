package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.StuRegiVO;


public class ProStuRegiSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 과목 아이디로 강의 수강 학생 리스트 가져오기

				int sub_code = Integer.parseInt(request.getParameter("sub_code"));

				// 1. DB데이터 조회하고 가져오기
				List<StuRegiVO> list = ProfessorDAO.LectureStudentList(sub_code);
				
				// 2. DB데이터 request scope 에 저장
				request.setAttribute("list", list);
				
				// 3. proLectureSelectList.jsp 페이지로 위임(전달) 처리
				return "ProStuRegiSelectList1.jsp";

	}

}
