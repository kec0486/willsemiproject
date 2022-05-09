package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.RegiSubVO;
import com.mystudy.college.model.vo.StuRegiVO;
import com.mystudy.college.model.vo.StudentVO;

public class studentRegiSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int st_id = Integer.parseInt(request.getParameter("st_id"));
		
		// 1. DB데이터 조회하고 가져오기
		List<RegiSubVO> list = StudentDAO.stuRegiAll(st_id);

		// 2. DB데이터 request scope 에 저장
		request.setAttribute("list", list);

		return "studentRegiSelectList.jsp";
	}

}
