package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.StuRegiVO;

public class proRegiInsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sub_code = request.getParameter("sub_code");
		String st_id = request.getParameter("st_id");
		
		System.out.println("sub_code : "+sub_code);
		System.out.println("st_name : "+st_id);
		
		//sub_code(sub_code로) 데이터 조회 후 콘솔 출력
		int subcode = Integer.parseInt(sub_code);
		List<StuRegiVO> rvo = ProfessorDAO.LectureStudentList(subcode);
		
		System.out.println("rvo : "+rvo);
		return "proRegiInsert.jsp";
	}

}
