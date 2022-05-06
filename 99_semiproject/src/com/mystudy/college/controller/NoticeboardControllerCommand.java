package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.NoticeboardListCommand;
import com.mystudy.college.model.command.NoticeboardViewCommand;
import com.mystudy.college.model.command.StudentInsertCommand;

@WebServlet("/noticeboard")
public class NoticeboardControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> NoticeboardControllerCommand.doGet() 실행~~");
		String type = request.getParameter("type");
		
		Command command = null;
		
		if ("noticeboardView".equals(type)) {
			command = new NoticeboardViewCommand();
		}
		
		if ("noticeboardList".equals(type)) {
			command = new NoticeboardListCommand();
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
