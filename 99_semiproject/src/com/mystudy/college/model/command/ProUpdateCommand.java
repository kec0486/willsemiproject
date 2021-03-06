package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.ProfessorVO;

public class ProUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ProUpdateCommand 실행");
		// 교수 개인정보조회
		// 파라미터 받은 것 가져오기
		
		String pro_id = request.getParameter("pro_id");
		System.out.println("pro_id : "+pro_id);
		
		//교수(pro_id로) 데이터 조회 후 콘솔 출력
		int proId = Integer.parseInt(pro_id);
		ProfessorVO pvo = ProfessorDAO.selectId(proId);
		System.out.println("pvo : "+pvo);
		
		
		// 2. DB데이터 request scope 에 저장
		request.setAttribute("pvo", pvo);
		
		return "professorUpdate.jsp";
	}

}
