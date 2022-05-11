package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.AdminLoginCommand;
import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.StLoginCommand;
import com.mystudy.college.model.command.StSearchCommand;
import com.mystudy.college.model.command.StSearchpwdCommand;
import com.mystudy.college.model.command.StudentInsertCommand;


@WebServlet("/controller")
public class LoginControllerCommand extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> LoginControllerCommand.doGet() 실행~~");
		String login = request.getParameter("login");
		Command command = null;
		
		if ("student".equals(login)) { //서브페이지 이동 
			command = new StLoginCommand();
		} else if ("searchidfind".equals(login)) { //서브페이지 이동 
			command = new StSearchCommand();
		}else if ("searchpwdfind".equals(login)) { //서브페이지 이동 
			command = new StSearchpwdCommand();
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
