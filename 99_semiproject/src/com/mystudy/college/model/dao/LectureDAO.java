package com.mystudy.college.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.mystudy.college.model.vo.LectureVO;
import com.mystudy.college.model.vo.TimeVO;
import com.mystudy.college.mybatis.DBService;

public class LectureDAO {

	public static int Insert_Lecture(LectureVO lvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("college.lectureInsert", lvo);
		ss.close();
		return result;
	}
	
	public static int Insert_Time(TimeVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("college.timeInsert", vo);
		ss.close();
		return result;
	}

}
