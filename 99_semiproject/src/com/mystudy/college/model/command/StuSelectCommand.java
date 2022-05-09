package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.MajorDAO;
import com.mystudy.college.model.dao.StudentDAO;
import com.mystudy.college.model.dao.TuitionDAO;
import com.mystudy.college.model.vo.MajorVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.model.vo.TuitionVO;

public class StuSelectCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> StuSelectCommand 실행");
		
		//파라미터 값 추출(확인)
		String st_id = request.getParameter("st_id");
		
		//st_id출력해보기
		System.out.println("st_id: " + st_id);
		
		//학생(st_id로) 데이터 조회 후 콘솔 출력
		int stId = Integer.parseInt(st_id);
		StudentVO svo = StudentDAO.select(stId);
		System.out.println("> svo : " + svo);
		
		//EL, JSTL 사용을 위한 scope 상에 속성 등록하기
		request.getSession().setAttribute("svo", svo); //학생객체 svo를 scope상에 등록
		
		return "studentSelect.jsp";
	}

}
