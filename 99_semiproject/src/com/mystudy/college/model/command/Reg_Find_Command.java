package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.RegistrationVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.model.vo.SubjectVO;

public class Reg_Find_Command implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		RegistrationVO vo = new RegistrationVO();
		vo.setSt_id(id);
		RegistrationVO list2 = StudentDAO.reg_select(vo);
		System.out.println(list2);
		SubjectVO vo1 = new SubjectVO();
		vo1.setSub_code(list2.getSub_code());
		
		List<SubjectVO> list1 = StudentDAO.sub_select(vo1);
		StudentVO list = StudentDAO.select(id);
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		return "reg_find.jsp";
	}

}
