package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.RegiSubVO;
import com.mystudy.college.model.vo.StudentVO;

public class stuSubjectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 학생 수강정보 조회 
				// 파라미터 받은 것 가져오기
				String st_id = request.getParameter("st_id");
				int selectId = Integer.parseInt(st_id);
				System.out.println(selectId);
				
				// 1. DB데이터 조회하고 가져오기
				List<RegiSubVO> rso = StudentDAO.stuRegiAll(selectId);
				// 2. DB데이터 request scope 에 저장
				request.getSession().setAttribute("rso", rso);
				// 3. professorSelectList.jsp 페이지로 위임(전달) 처리
				return "studentRegiSelectList.jsp";
	}

}
