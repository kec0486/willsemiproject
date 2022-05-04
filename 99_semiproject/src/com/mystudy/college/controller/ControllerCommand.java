package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.StLoginCommand;
import com.mystudy.college.model.command.StudentInsertCommand;


@WebServlet("/controller")
public class ControllerCommand extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doGet() 실행~~");
		String type = request.getParameter("type");
		String student = request.getParameter("student");
		
		Command command = null;
		
		if ("stlogin".equals(type)) { //서브페이지 이동 
			command = new StLoginCommand();
		}else if ("insert".equals(student)) { //서브페이지 이동 
			command = new StudentInsertCommand();
		}
//		else if("fullname".equals(type)) {
//			command = new FullnameCommand();
//		}else if("fullnameList".equals(type)) {
//			command = new FullnameListCommand();
//		}else if("search".equals(type)) {
//			command = new SearchCommand();
//		}
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doPost() 실행~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
