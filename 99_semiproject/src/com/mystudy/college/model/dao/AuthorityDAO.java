package com.mystudy.college.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.mybatis.DBService;

public class AuthorityDAO {
	public static StudentVO stlogin(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.stlogin", vo);
		ss.close();
		return vo1;
	}
	public static StudentVO prologin(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.prologin", vo);
		ss.close();
		return vo1;
	}
	public static StudentVO adminlogin(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.adminlogin", vo);
		ss.close();
		return vo1;
	}
}
