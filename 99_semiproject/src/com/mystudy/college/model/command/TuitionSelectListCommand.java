package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.TuitionDAO;

public class TuitionSelectListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> TuitionSelectListCommand 실행");
		
		
		//key-value가 학생id-등록금 납부여부 인 map을, 모든 학생을 가져와서 List에 반환 
		List<Map<String, Object>> id_tuState = TuitionDAO.selectAll();
		System.out.println("> id_tuState : " + id_tuState);
		
		//EL, JSTL 사용을 위한 scope 상에 속성 등록하기
		request.setAttribute("id_tuState", id_tuState); //id-tuState의 map들의 List를 scope상에 등록
		
		return "TuitionSelect.jsp";
	}
}