package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.AuthorityDAO;
import com.mystudy.college.model.vo.MajorVO;
import com.mystudy.college.model.vo.StudentVO;

public class StSearchpwdCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		if(name.trim() == "" || email.trim() == "") {
			return "searchpwdfind.jsp";
		}
		StudentVO vo = new StudentVO();
		vo.setSt_id(id);
		vo.setSt_name(name);
		vo.setSt_email(email);
		StudentVO list = AuthorityDAO.stsearchpwd(vo);
		MajorVO vo1 = new MajorVO();
		vo1.setMa_code(list.getMa_code());
		MajorVO maname =  AuthorityDAO.select_MA_NAME(vo1);
		System.out.println(name);
		System.out.println(email);
		System.out.println(list);
		System.out.println(maname);
		if(list == null || maname == null) {
			return "searchpwdfind.jsp";
		}
		AuthorityDAO.stsearchpwd(vo);
		request.setAttribute("list", list);
		request.setAttribute("maname", maname);
		
		return "searchpwdfind_ok.jsp";
	}

}
