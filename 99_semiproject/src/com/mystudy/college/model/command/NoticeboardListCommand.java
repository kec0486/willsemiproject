package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.NoticeboardDAO;
import com.mystudy.college.model.vo.NoticeboardVO;

public class NoticeboardListCommand implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> NoticeboardListCommand 실행");
		
		List<NoticeboardVO> list = NoticeboardDAO.getAllList();
		
		request.setAttribute("list", list);
		
		return "noticeboard_list.jsp";
	}

}
