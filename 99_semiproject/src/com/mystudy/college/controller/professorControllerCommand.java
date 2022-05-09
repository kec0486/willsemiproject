package com.mystudy.college.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.ProLoginCommand;
import com.mystudy.college.model.command.ProSelectCommand;
import com.mystudy.college.model.command.ProStuRegiSelectListCommand;
import com.mystudy.college.model.command.ProUpdateCommand;
import com.mystudy.college.model.command.lectureSelectCommand;
import com.mystudy.college.model.command.proRegiInsertOkCommand;
import com.mystudy.college.model.command.proRegiUpdateOkCommand;
import com.mystudy.college.model.command.proUpdateListCommand;
import com.mystudy.college.model.command.professorSelectListCommand;
import com.mystudy.college.model.command.prolectureSelectListCommand;

@WebServlet("/professor/controller")
public class professorControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doGet() 실행~~");
		String login = request.getParameter("login");
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		System.out.println(id);
		Command command = null;
		
		if ("professor".equals(login)) { // 교수 
			command = new ProLoginCommand();
		} else if ("list".equals(type)) { // 교수 개인 정보 조회
			command = new ProSelectCommand();
		} else if ("professorSelectList".equals(type)) { //조회결과 
			command = new professorSelectListCommand();
		} else if ("professorUpdate".equals(type)) { //교수 개인정보 수정 요청 
			command = new ProUpdateCommand();
		} else if ("professorUpdateList".equals(type)) { //교수 개인정보 수정 확인 요청
			command = new proUpdateListCommand();
		} else if ("prolectureSelect".equals(type)) { //교수 강의 목록 확인 요청
			command = new lectureSelectCommand();
		} else if ("prolectureSelectList".equals(type)) { //교수 강의 목록 조회
			command = new prolectureSelectListCommand();
		} else if ("ProStuRegiSelectList".equals(type)) { //교수 강의과목 성적 리스트 조회
			command = new ProStuRegiSelectListCommand();
		} else if ("proRegiInsert_ok".equals(type)) { //교수 강의과목 학생정보 입력
			command = new proRegiInsertOkCommand();
		} else if ("proRegiUpdate_ok".equals(type)) { //교수 강의과목 학생정보 수정
			command = new proRegiUpdateOkCommand();
		}
		
		
		
		
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doPost() 실행~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
