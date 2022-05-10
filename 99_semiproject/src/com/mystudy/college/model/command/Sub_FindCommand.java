package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.dao.SubjectDAO;
import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.SubjectVO;
import com.sun.org.apache.bcel.internal.generic.DSUB;

public class Sub_FindCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SubjectVO> list = SubjectDAO.selectAll();
		request.setAttribute("list", list);
		return "sub_find.jsp";
	}

}
