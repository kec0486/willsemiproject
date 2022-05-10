package com.mystudy.college.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.college.model.dao.ProfessorDAO;
import com.mystudy.college.model.vo.LecSubjectVO;
import com.mystudy.college.model.vo.StuRegiVO;


public class ProStuRegiSelectListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 과목 아이디로 강의 수강 학생 리스트 가져오기
		
				// 파라미터 받은 것 가져오기
				String sub_code = request.getParameter("sub_code");
				System.out.println("sub_code : "+ sub_code);
				
				//교수(pro_id로) 데이터 조회 후 콘솔 출력
				int subCode = Integer.parseInt(sub_code);
				List<StuRegiVO> srvo = ProfessorDAO.LectureStudentList(subCode);
				System.out.println("srvo : "+srvo);
				
				
				// 2. DB데이터 request scope 에 저장
				request.setAttribute("srvo", srvo);
				
				
				// 3. proLectureSelectList.jsp 페이지로 위임(전달) 처리
				return "ProStuRegiSelectList1.jsp";

	}

}
