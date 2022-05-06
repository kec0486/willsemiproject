package com.mystudy.college.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.NoticeboardDAO;
import com.mystudy.college.model.vo.NoticeboardVO;

public class NoticeboardViewCommand implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> NoticeboardViewCommand 실행");
		
		//파라미터 값 추출(확인)
		String n_num = request.getParameter("n_num");
		
		//게시글(n_num) 데이터 조회 후 콘솔 출력
		int nNum = Integer.parseInt(n_num);
		NoticeboardVO vo = NoticeboardDAO.selectOne(nNum);
		System.out.println("> vo : " + vo);
		
		//EL, JSTL 사용을 위한 scope 상에 속성 등록하기
		request.setAttribute("vo", vo); //게시글 데이터
		
		return "noticeboard_view.jsp";
	}
}
