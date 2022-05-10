package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.StudentVO;

public class St_UpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		StudentVO list = StudentDAO.select(id);
		System.out.println(list);
		request.setAttribute("list", list);
		return "st_update.jsp";
	}

}
