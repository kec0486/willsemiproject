package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.StudentInsertCommand;
import com.mystudy.college.model.command.StudentSelectCommand;
import com.mystudy.college.model.command.StudentUpdateCommand;


@WebServlet("/admin/admin")
public class AdminControllerCommand extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand.doGet() 실행~~");
		String student = request.getParameter("student");
		String professor = request.getParameter("professor");
		String subject = request.getParameter("subject");
		String tuition = request.getParameter("tuition");
		
		Command command = null;
		
		if ("insert".equals(student)) { //서브페이지 이동 
			command = new StudentInsertCommand();
		}else if ("update".equals(student)) { //서브페이지 이동 
			command = new StudentUpdateCommand();
		}else if ("select".equals(student)) { //서브페이지 이동 
			command = new StudentSelectCommand();
		}
//		else if ("insert".equals(professor)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("update".equals(professor)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("select".equals(professor)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("insert".equals(subject)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("update".equals(subject)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("delete".equals(subject)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("select".equals(subject)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("insert".equals(tuition)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("update".equals(tuition)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
//		}else if ("select".equals(tuition)) { //서브페이지 이동 
//			command = new StudentinsertCommand();
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
