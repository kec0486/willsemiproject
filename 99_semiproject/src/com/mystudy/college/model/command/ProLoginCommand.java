package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.AuthorityDAO;
import com.mystudy.college.model.vo.ProfessorVO;

public class ProLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println(id + ": "+ pwd);
		
		if(id.trim() == "" || pwd.trim() == "") {
			return "index.jsp";
		}
		
		ProfessorVO pvo = new ProfessorVO();
		pvo.setPro_id(Integer.parseInt(id));
		pvo.setPro_pwd(pwd);
		
		if(AuthorityDAO.prologin(pvo) == null) {
			return "index.jsp";
		}
		
		ProfessorVO list = AuthorityDAO.prologin(pvo);
		request.setAttribute("list", list);
		request.getSession().setAttribute("pvo", pvo);
		return "main.jsp";	
	}

}
