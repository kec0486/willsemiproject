package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.StudentVO;

public class St_FindCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<StudentVO> list = StudentDAO.selectAll();
		System.out.println(list);
		request.setAttribute("list", list);
		return "st_find.jsp";
	}

}
