<<<<<<< HEAD
package com.mystudy.college.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.TuitionVO;
import com.mystudy.college.mybatis.DBService;

public class TuitionDAO {
	
	//학생 본인 등록금 조회
	public static TuitionVO check(int st_id) {
		SqlSession ss = DBService.getFactory().openSession();
		TuitionVO tvo = ss.selectOne("tuition.check", st_id);
		ss.close();
		return tvo;
	}
	
	//관리자 학생 등록금 납부 여부만 전체 조회
	public static List<Map<String, Object>> selectAll() {
		SqlSession ss = DBService.getFactory().openSession();
		List<Map<String, Object>> result = ss.selectList("tuition.selectAll");
		ss.close();
		return result;
	}
	
	//관리자 특정 학생(st_id) 등록금  조회
	public static TuitionVO selectOne(int st_id) {
		SqlSession ss = DBService.getFactory().openSession();
		TuitionVO tvo = ss.selectOne("tuition.selectOne", st_id);
		ss.close();
		return tvo;
	}
}
=======
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
>>>>>>> branch 'master' of https://github.com/kec0486/willsemiproject.git
