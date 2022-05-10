package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.dao.SubjectDAO;
import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.SubjectVO;

public class Sub_InsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int level = Integer.parseInt(request.getParameter("level"));
		int credit = Integer.parseInt(request.getParameter("credit"));
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String subclass = request.getParameter("class");
		SubjectVO vo = new SubjectVO(0, name, level, credit, day, time, subclass);
		System.out.println(vo);
		int n = SubjectDAO.insert(vo);
		if(n == 1) {
			return "success.jsp";			
		}else {
			return "fail.jsp";	
		}
	}

}
