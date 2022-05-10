package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.ProfessorVO;

public class Pro_FindCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ProfessorVO> list = ProfessorDAO.selectAll();
		request.setAttribute("list", list);
		return "pro_find.jsp";
	}

}
