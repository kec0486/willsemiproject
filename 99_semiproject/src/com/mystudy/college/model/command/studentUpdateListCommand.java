package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.StudentVO;

public class studentUpdateListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("st_id"));
		String pwd = request.getParameter("st_pwd");
		String name = request.getParameter("st_name");
		String ssn = request.getParameter("st_ssn");
		int level = Integer.parseInt(request.getParameter("st_level"));
		String mobile = request.getParameter("st_st_mobile");
		String phone = request.getParameter("st_st_phone");
		String email = request.getParameter("st_st_email");
		String addr = request.getParameter("st_addr");
		int maCode = Integer.parseInt(request.getParameter("st_maCode"));
	
		StudentVO svo = new StudentVO(id, pwd, name, ssn, level, mobile, phone, email, addr, maCode);
		System.out.println(svo);
		
		int list = StudentDAO.studentUpdate(svo);
		request.setAttribute("list", list);;
		System.out.println(list);
		
		return "student.jsp";
	
	}

}
