package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.StudentVO;

public class St_UpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		int level = Integer.parseInt(request.getParameter("level"));
		String mobile = request.getParameter("mobile");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		int code = Integer.parseInt(request.getParameter("code"));
		StudentVO vo = new StudentVO(id, pwd, name, ssn, level, mobile, phone, email, addr, code);
		int n = StudentDAO.update(vo);
		if(n == 1) {
			return "controller?type=st_find";			
		}else {
			return "fail.jsp";	
		}
	}

}
