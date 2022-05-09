package com.mystudy.college.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.MajorVO;
import com.mystudy.college.mybatis.DBService;

public class MajorDAO {
	//전공조회
	public static MajorVO selectOne(int st_id) {
		SqlSession ss = DBService.getFactory().openSession();
		MajorVO mvo = ss.selectOne("major.selectOne", st_id);
		ss.close();
		return mvo;

	}

}
