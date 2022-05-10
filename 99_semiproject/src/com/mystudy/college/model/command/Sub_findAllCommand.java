package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.dao.SubjectDAO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.model.vo.SubjectVO;

public class Sub_findAllCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		StudentVO list = StudentDAO.select(id);
		
		List<SubjectVO> sublist = SubjectDAO.selectAll();
		
		request.setAttribute("list", list);
		request.setAttribute("sublist", sublist);
		return "sub_selectAll.jsp";
	}

}
