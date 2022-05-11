package com.mystudy.college.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.AdminAccountVO;
import com.mystudy.college.model.vo.MajorVO;
import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.mybatis.DBService;

public class AuthorityDAO {
	//login 권한
	public static StudentVO stlogin(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.stlogin", vo);
		ss.close();
		return vo1;
	}
	public static ProfessorVO prologin(ProfessorVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		ProfessorVO vo1 = ss.selectOne("authority.prologin", vo);
		ss.close();
		return vo1;
	}
	public static AdminAccountVO adminlogin(AdminAccountVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		AdminAccountVO vo1 = ss.selectOne("authority.adminlogin", vo);
		ss.close();
		return vo1;
	}
	//id찾기 
	public static StudentVO stsearchid(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.stsearchid", vo);
		ss.close();
		return vo1;
	}
	public static StudentVO stsearchpwd(StudentVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		StudentVO vo1 = ss.selectOne("authority.stsearchpwd", vo);
		ss.close();
		return vo1;
	}
	public static ProfessorVO prosearchid(ProfessorVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		ProfessorVO vo1 = ss.selectOne("authority.prologin", vo);
		ss.close();
		return vo1;
	}
	// 전공
	public static MajorVO select_MA_NAME(MajorVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		MajorVO vo1 = ss.selectOne("authority.select_MA_NAME", vo);
		ss.close();
		return vo1;
	}
}
