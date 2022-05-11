package com.mystudy.college.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.ProfessorVO;
import com.mystudy.college.model.vo.RegiSubVO;
import com.mystudy.college.model.vo.StudentVO;
import com.mystudy.college.model.vo.SubjectVO;
import com.mystudy.college.mybatis.DBService;

public class SubjectDAO {
	//과목 등록 수정 삭제 조회
	public static int insert(SubjectVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int n = ss.insert("admin.subinsert",vo);
		ss.commit();
		ss.close();
		return n;
	}
	public static int update(SubjectVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int n = ss.update("admin.subupdate",vo);
		ss.commit();
		ss.close();
		return n;
	}
	public static int delete(int code) {
		SqlSession ss = DBService.getFactory().openSession();
		int n = ss.update("admin.subdelete",code);
		ss.commit();
		ss.close();
		return n;
	}
	public static List<SubjectVO> selectAll() {
		SqlSession ss = DBService.getFactory().openSession();
		List<SubjectVO> list = ss.selectList("admin.subselectAll");
		ss.close();
		return list;
	}
	public static SubjectVO select(int code) {
		SqlSession ss = DBService.getFactory().openSession();
		SubjectVO vo = ss.selectOne("admin.subselect",code);
		ss.close();
		return vo;
	}
}
