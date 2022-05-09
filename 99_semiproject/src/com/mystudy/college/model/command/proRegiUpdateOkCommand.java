package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.RegistrationVO;

public class proRegiUpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 학생성적 수정 
				int re_score = Integer.parseInt(request.getParameter("re_score"));
				String re_grade = request.getParameter("re_grade");
				int sub_code = Integer.parseInt(request.getParameter("sub_code"));
				int st_id = Integer.parseInt(request.getParameter("st_id"));
				
				RegistrationVO rvo = new RegistrationVO(re_score, re_grade, sub_code, st_id);
				
				System.out.println(rvo);

				// 1. DB데이터 조회하고 가져오기
				int list = ProfessorDAO.proRegiUpdate(rvo);
				System.out.println(list);
				// 2. DB데이터 request scope 에 저장
				request.setAttribute("list", list);
				
				// 3. proLectureSelectList.jsp 페이지로 위임(전달) 처리
				return "proRegUpdateOk.jsp";
	}

}
