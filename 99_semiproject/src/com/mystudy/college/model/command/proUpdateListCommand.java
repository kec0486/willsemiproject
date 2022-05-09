package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.ProfessorVO;

public class proUpdateListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String position = request.getParameter("position");
		String office = request.getParameter("office");
		String mobile = request.getParameter("mobile");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		int maCode = Integer.parseInt(request.getParameter("maCode"));
				
		//System.out.println(id); //값이 잘 들어오는지 확인 
		ProfessorVO pvo = new ProfessorVO(id, pwd, name, ssn, position, office, mobile, phone, email, addr, maCode);
		
		System.out.println(pvo); // 값이 잘 들어오는지 확인 
		// 1. DB데이터 조회하고 가져오기
		int list =  ProfessorDAO.proUpdate(pvo);
		
		System.out.println(list);
//		// 2. DB데이터 request scope 에 저장
		request.setAttribute("list", list);
//		
//		// 3. prosessorUpdateList.jsp 페이지로 위임(전달) 처리
		return "professorUpdateList.jsp";
	}

}
