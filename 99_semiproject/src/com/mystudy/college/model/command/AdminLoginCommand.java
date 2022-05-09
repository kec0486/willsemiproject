package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.AuthorityDAO;
import com.mystudy.college.model.vo.AdminAccountVO;
import com.mystudy.college.model.vo.StudentVO;

public class AdminLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.trim() == "" || pwd.trim() == "") {
			return "index.jsp";
		}
		
		
		AdminAccountVO vo = new AdminAccountVO();
		vo.setAd_id(Integer.parseInt(id));
		vo.setAd_pwd(pwd);
		System.out.println(id);
		System.out.println(pwd);
		System.out.println(vo);
		
		if(AuthorityDAO.adminlogin(vo) == null) {
			return "index.jsp";
		}
		AdminAccountVO list = AuthorityDAO.adminlogin(vo);
		request.setAttribute("list", list);
		return "main.jsp";	
	}

}
