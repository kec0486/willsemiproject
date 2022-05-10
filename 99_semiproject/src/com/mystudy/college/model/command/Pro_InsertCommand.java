package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.ProfessorVO;

public class Pro_InsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String position = request.getParameter("position");
		String office = request.getParameter("office");
		String mobile = request.getParameter("mobile");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		int code = Integer.parseInt(request.getParameter("code"));
		ProfessorVO vo = new ProfessorVO(0, pwd, name, ssn, position, office, mobile, phone, email, addr, code);
		int n = ProfessorDAO.insert(vo);
		if(n == 1) {
			return "success.jsp";			
		}else {
			return "fail.jsp";	
		}
	}

}
