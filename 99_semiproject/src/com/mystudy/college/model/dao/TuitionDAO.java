package com.mystudy.college.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.TuitionVO;
import com.mystudy.college.mybatis.DBService;

public class TuitionDAO {
	//등록금 조회
	public static TuitionVO check(int st_id) {
		SqlSession ss = DBService.getFactory().openSession();
		TuitionVO tvo = ss.selectOne("tuition.check", st_id);
		ss.close();
		return tvo;
	}

}
