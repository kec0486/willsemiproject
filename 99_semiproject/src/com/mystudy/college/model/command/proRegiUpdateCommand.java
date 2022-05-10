package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.RegistrationVO;

public class proRegiUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> proRegiUpdateCommand 실행");

		String stu_id = request.getParameter("stu_id");
		String sub_code = request.getParameter("sub_code");
		
		int stuId = Integer.parseInt(stu_id);
		int subCode = Integer.parseInt(sub_code);
		
		RegistrationVO vo = new RegistrationVO(stuId, subCode);
		
		int rvo = ProfessorDAO.proRegiUpdate(vo);

		request.getSession().setAttribute("vo", vo);

		return "proRegiUpdate.jsp";
	}

}
