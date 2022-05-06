package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.AuthorityDAO;
import com.mystudy.college.model.dao.NoticeboardDAO;
import com.mystudy.college.model.vo.NoticeboardVO;
import com.mystudy.college.model.vo.StudentVO;
import com.sun.org.apache.bcel.internal.generic.ATHROW;

public class StLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.trim() == "" || pwd.trim() == "") {
			return "index.jsp";
		}
		
		
		StudentVO vo = new StudentVO();
		vo.setSt_id(Integer.parseInt(id));
		vo.setSt_pwd(pwd);
		System.out.println(id);
		System.out.println(pwd);
		System.out.println(vo);
		if(AuthorityDAO.stlogin(vo) == null) {
			return "index.jsp";
		}
		AuthorityDAO.stlogin(vo);
		request.setAttribute("id", id);
//		if (AuthorityDAO.stlogin(vo) == null) {
//			return "index.jsp";			
//		}else {
//			return "main.jsp";
//		}
		
		
		return "main.jsp";	
		
	}

}
