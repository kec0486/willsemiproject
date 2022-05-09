package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.EmployeeDAO;
import com.mystudy.college.model.vo.EmployeeVO;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");
		String path = "";
		if (keyword == null || keyword.trim().equals("")) {
			path = "search.jsp";
		} else { // DB데이터 조회 후 결과페이지 이동
			List<EmployeeVO> list =  EmployeeDAO.getSerch(idx,keyword);
			request.setAttribute("list", list);
			path = "searchList.jsp";
		}
		
		return path;
	}

}
