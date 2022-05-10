package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.SubjectDAO;
import com.mystudy.college.model.vo.SubjectVO;

public class Sub_UpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int code = Integer.parseInt(request.getParameter("code"));
		
		SubjectVO list = SubjectDAO.select(code);
		request.setAttribute("list", list);
		return "sub_update.jsp";
	}

}
