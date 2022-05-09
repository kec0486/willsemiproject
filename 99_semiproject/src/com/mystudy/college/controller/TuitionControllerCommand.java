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
