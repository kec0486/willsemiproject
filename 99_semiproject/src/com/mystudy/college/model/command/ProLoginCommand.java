package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.AuthorityDAO;
import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.StudentVO;

public class ProLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.trim() == "" || pwd.trim() == "") {
			return "index.jsp";
		}
		ProfessorVO vo = new ProfessorVO();
		vo.setPro_id(Integer.parseInt(id));
		vo.setPro_pwd(pwd);
		
		if(AuthorityDAO.prologin(vo) == null) {
			return "index.jsp";
		}
		ProfessorVO list = AuthorityDAO.prologin(vo);
		request.setAttribute("list", list);
		return "main.jsp";	
	}

}
