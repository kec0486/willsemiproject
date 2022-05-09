package com.mystudy.college.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.ProSelectCommand;
import com.mystudy.college.model.command.ProStuRegiSelectListCommand;
import com.mystudy.college.model.command.ProUpdateCommand;
import com.mystudy.college.model.command.StuSelectCommand;
import com.mystudy.college.model.command.lectureSelectCommand;
import com.mystudy.college.model.command.proRegiInsertOkCommand;
import com.mystudy.college.model.command.proRegiUpdateOkCommand;
import com.mystudy.college.model.command.proUpdateListCommand;
import com.mystudy.college.model.command.professorSelectListCommand;
import com.mystudy.college.model.command.prolectureSelectListCommand;
import com.mystudy.college.model.command.stuSubjectListCommand;
import com.mystudy.college.model.command.stuUpdateCommand;
import com.mystudy.college.model.command.studentRegiSelectListCommand;
import com.mystudy.college.model.command.studentSelectListCommand;
import com.mystudy.college.model.command.studentUpdateListCommand;

@WebServlet("/student")
public class StudentControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doGet() 실행~~");
		String type = request.getParameter("type");

		Command command = null;

		if ("list".equals(type)) { // 학생 개인 정보 조회
			command = new StuSelectCommand();
		} else if ("studentSelectList".equals(type)) { // 조회결과
			command = new studentSelectListCommand();
		} else if ("studentUpdate".equals(type)) { // 학생 개인정보 수정 요청
			command = new stuUpdateCommand();
		} else if ("studentUpdateList".equals(type)) { // 학생 개인정보 수정 확인 요청
			command = new studentUpdateListCommand();
		} else if ("studentRegiSelectList".equals(type)) { // 학생 개인정보 수정 확인 요청
			command = new studentRegiSelectListCommand();
		} else if ("stuSubjectList".equals(type)) { // 학생 수강과목 조회 요청 
			command = new stuSubjectListCommand();
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
