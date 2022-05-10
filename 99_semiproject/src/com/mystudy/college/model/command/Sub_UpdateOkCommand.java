package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.dao.SubjectDAO;
import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.SubjectVO;

public class Sub_UpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int code = Integer.parseInt(request.getParameter("code"));
		String name = request.getParameter("name");
		int level = Integer.parseInt(request.getParameter("level"));
		int credit = Integer.parseInt(request.getParameter("credit"));
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String subclass = request.getParameter("class");
		SubjectVO vo = new SubjectVO(code, name, level, credit, day, time, subclass);
		int n = SubjectDAO.update(vo);
		if(n == 1) {
			return "controller?type=sub_find";			
		}else {
			return "fail.jsp";	
		}
	}

}
