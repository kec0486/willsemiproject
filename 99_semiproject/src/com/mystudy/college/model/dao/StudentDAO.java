package com.mystudy.college.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.mybatis.DBService;

public class StudentDAO {
	public static int insert(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int n = ss.insert("admin.stinsert",vo);
		ss.commit();
		ss.close();
		return n;
	}
	public static int update(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int n = ss.update("admin.stupdate",vo);
		ss.commit();
		ss.close();
		return n;
	}
	public static List<StudentVO> selectAll() {
		SqlSession ss = DBService.getFactory().openSession();
		List<StudentVO> list = ss.selectList("admin.stselectAll");
		ss.close();
		return list;
	}
	public static StudentVO select(int id) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo = ss.selectOne("student.studentSelect",id);
		ss.close();
		return vo;
	}
	
}
