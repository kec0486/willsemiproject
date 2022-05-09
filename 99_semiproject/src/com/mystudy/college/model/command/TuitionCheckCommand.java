package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.MajorDAO;
import com.mystudy.college.model.dao.TuitionDAO;
import com.mystudy.college.model.vo.MajorVO;
import com.mystudy.college.model.vo.TuitionVO;


public class TuitionCheckCommand implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> TuitionCheckCommand 실행");
		
		//파라미터 값 추출(확인)
		String st_id = request.getParameter("st_id");
		
		//st_id출력해보기
		System.out.println("st_id: " + st_id);
		
		//학생(st_id로) 데이터 조회 후 콘솔 출력
		int stId = Integer.parseInt(st_id);
		TuitionVO tvo = TuitionDAO.check(stId);
		System.out.println("> tvo : " + tvo);
		
		//학생(st_id)로 전공 조회 후 콘솔 출력
		MajorVO mvo = MajorDAO.selectOne(stId);
		System.out.println("> mvo : " + mvo);
		
		//EL, JSTL 사용을 위한 scope 상에 속성 등록하기
		request.setAttribute("tvo", tvo); //등록금 tvo등록
		request.setAttribute("mvo", mvo); //전공 mvo등록
		
		return "tuition_view.jsp";
	}

}
