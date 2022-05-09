package com.mystudy.college.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.RegiSubVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.mybatis.DBService;

public class StudentDAO {
	// 학생 아이디로 받아서 개인정보 조회
	public static List<StudentVO> selectId(int selectId) {
		SqlSession ss = DBService.getFactory().openSession();
		List<StudentVO> list = ss.selectList("student.studentSelect", selectId);
		System.out.println(list);
		ss.close();
		return list;
	}

	// 학생 아이디로 검색해서 개인정보 수정
	public static int studentUpdate(StudentVO svo) {
		int result;
		SqlSession ss = null;
		try {
			ss = DBService.getFactory().openSession();
			result = ss.update("student.studentUpdate", svo);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;

		} finally {
			ss.close();
		}
		System.out.println(result);
		return result;
	}

	// 학생 개인성적 전체조회
	public static List<RegiSubVO> stuRegiAll(int st_id) {
		SqlSession ss = DBService.getFactory().openSession();
		List<RegiSubVO> list = ss.selectList("student.stuRegiAll", st_id);
		System.out.println(list);
		ss.close();
		return list;
	}

}
