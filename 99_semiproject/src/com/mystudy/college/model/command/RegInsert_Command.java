package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.vo.RegistrationVO;
import com.mystudy.college.model.vo.StudentVO;

public class RegInsert_Command implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String term = request.getParameter("term");
		int code = Integer.parseInt(request.getParameter("code"));
		int id = Integer.parseInt(request.getParameter("id"));
		
		RegistrationVO vo = new RegistrationVO(term, 0, null, code, id);
		
		int n = StudentDAO.reg_insert(vo);
		if(n == 1) {
			return "student?type=sub_select";
		}else {
			return "fail.jsp";
		}
	}

}
