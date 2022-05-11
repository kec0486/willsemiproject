<<<<<<< HEAD
package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.TuitionCheckCommand;
import com.mystudy.college.model.command.TuitionInsertCommand;
import com.mystudy.college.model.command.TuitionSelectListCommand;
import com.mystudy.college.model.command.TuitionUpdateCommand;

@WebServlet("/tuition")
public class TuitionControllerCommand extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> TuitionControllerCommand.doGet() 실행~~");
		String type = request.getParameter("type");
		
		Command command = null;
		
		if ("tuitionCheck".equals(type)) { //학생로그인 후 등록금조회
			command = new TuitionCheckCommand();
		} else if ("tuitioninsert".equals(type)) { //관리자로그인 후 등록금입력
			command = new TuitionInsertCommand();
		} else if ("tuitionupdate".equals(type)) { //관리자로그인 후 등록금수정
			command = new TuitionUpdateCommand();
		} else if ("tuitionSelectList".equals(type)) { //관리자로그인 후 전체 학생 등록금조회
			command = new TuitionSelectListCommand();
		}
			
		String path = command.exec(request, response);
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doPost() 실행~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}
=======
package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.TuitionCheckCommand;

@WebServlet("/tuition")
public class TuitionControllerCommand extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> TuitionControllerCommand.doGet() 실행~~");
		String type = request.getParameter("type");
		
		Command command = null;
		
		if ("tuitionCheck".equals(type)) {
			command = new TuitionCheckCommand();
		}
			
		String path = command.exec(request, response);
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doPost() 실행~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}
>>>>>>> branch 'master' of https://github.com/kec0486/willsemiproject.git
