package com.mystudy.college.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.college.model.vo.NoticeboardVO;
import com.mystudy.college.mybatis.DBService;

public class NoticeboardDAO {
	//게시글(Noticeboard)의 전체 목록을 List로 반환
	public static List<NoticeboardVO> getAllList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<NoticeboardVO> list = ss.selectList("noticeboard.selectAll");
		ss.close();
		return list;
	}
	
	//게시글 하나 조회
	public static NoticeboardVO selectOne(int n_num) {
		SqlSession ss = DBService.getFactory().openSession();
		NoticeboardVO vo = ss.selectOne("noticeboard.select", n_num);
		ss.close();
		return vo;
	}
}
