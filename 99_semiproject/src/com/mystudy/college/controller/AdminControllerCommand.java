package com.mystudy.college.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.command.AdminLoginCommand;
import com.mystudy.college.model.command.Command;
import com.mystudy.college.model.command.Pro_FindCommand;
import com.mystudy.college.model.command.Pro_InsertCommand;
import com.mystudy.college.model.command.Pro_UpdateCommand;
import com.mystudy.college.model.command.Pro_UpdateOkCommand;
import com.mystudy.college.model.command.St_FindCommand;
import com.mystudy.college.model.command.St_InsertCommand;
import com.mystudy.college.model.command.St_UpdateCommand;
import com.mystudy.college.model.command.St_UpdateOkCommand;
import com.mystudy.college.model.command.StudentInsertCommand;
import com.mystudy.college.model.command.StudentSelectCommand;
import com.mystudy.college.model.command.StudentUpdateCommand;
import com.mystudy.college.model.command.Sub_DeleteCommand;
import com.mystudy.college.model.command.Sub_FindCommand;
import com.mystudy.college.model.command.Sub_InsertCommand;
import com.mystudy.college.model.command.Sub_UpdateCommand;
import com.mystudy.college.model.command.Sub_UpdateOkCommand;


@WebServlet("/admin/controller")
public class AdminControllerCommand extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> AdminControllerCommand.doGet() 실행~~");
		String login = request.getParameter("login");
		String type = request.getParameter("type");
		
		Command command = null;
		
		if ("admin".equals(login)) { //서브페이지 이동 
			command = new AdminLoginCommand();
		}else if ("st_insert".equals(type)) { //서브페이지 이동 
			command = new St_InsertCommand();
		}else if ("st_find".equals(type)) { //서브페이지 이동 
			command = new St_FindCommand();
		}else if ("st_update".equals(type)) { //서브페이지 이동 
			command = new St_UpdateCommand();
		}else if ("st_update_ok".equals(type)) { //서브페이지 이동 
			command = new St_UpdateOkCommand();
		}else if ("pro_insert".equals(type)) { //서브페이지 이동 
			command = new Pro_InsertCommand();
		}else if ("pro_find".equals(type)) { //서브페이지 이동 
			command = new Pro_FindCommand();
		}else if ("pro_update".equals(type)) { //서브페이지 이동 
			command = new Pro_UpdateCommand();
		}else if ("pro_update_ok".equals(type)) { //서브페이지 이동 
			command = new Pro_UpdateOkCommand();
		}else if ("sub_insert".equals(type)) { //서브페이지 이동 
			command = new Sub_InsertCommand();
		}else if ("sub_update".equals(type)) { //서브페이지 이동 
			command = new Sub_UpdateCommand();
		}else if ("sub_update_ok".equals(type)) { //서브페이지 이동 
			command = new Sub_UpdateOkCommand();
		}else if ("sub_delete".equals(type)) { //서브페이지 이동 
			command = new Sub_DeleteCommand();
		}else if ("sub_find".equals(type)) { //서브페이지 이동 
			command = new Sub_FindCommand();
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
