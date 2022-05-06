package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.AdminLoginCommand;
import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.ProLoginCommand;
import com.mystudy.college.model.command.StudentInsertCommand;
import com.mystudy.college.model.command.StudentSelectCommand;
import com.mystudy.college.model.command.StudentUpdateCommand;


@WebServlet("/professor/controller")
public class ProfessorControllerCommand extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> AdminControllerCommand.doGet() 실행~~");
		String login = request.getParameter("login");
		
		Command command = null;
		
		if ("professor".equals(login)) { //서브페이지 이동 
			command = new ProLoginCommand();
		}

		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doPost() 실행~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
