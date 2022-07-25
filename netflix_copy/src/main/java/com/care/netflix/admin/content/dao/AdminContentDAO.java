package com.care.netflix.admin.content.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.netflix.admin.content.vo.AdminContentVO;



@Repository
public class AdminContentDAO <AdminContentVO>{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AdminContentVO> getAllContent(AdminContentVO vo){ // 카테고리별 모든 콘텐츠 출력
		System.out.println("DAO - Content - getAllContent - MyBatis 실행 ------");
		return mybatis.selectList("contentMapper.getAllContent",vo);	
	}
	
	public AdminContentVO getOneContent(AdminContentVO vo)throws Exception{ //선택된 컨텐츠 정보 가져와서 전달
		System.out.println("DAO - Content - getOneContent - MyBatis 실행 ------");
		return mybatis.selectOne("contentMapper.getOneContent",vo);
	}
	
	public int getTotalCount(HashMap<String, Object> map) { //DashBoard Controller에서 가져가 등록된 콘텐츠수 표기
    	System.out.println("DAO - Content - getTotalCount - MyBatis 실행 ------");
		return mybatis.selectOne("contentMapper.getTotalCount");
	}
	
	public int insertContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - insertContent - MyBatis 실행 ------");
		return mybatis.insert("contentMapper.insertContent",vo);
	}
	
	public int deleteContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - deleteContent - MyBatis 실행 ------");
		return mybatis.delete("contentMapper.deleteContent",vo);
	}
	
	public int modifyContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - modifyContent - MyBatis 실행 ------");
		return mybatis.update("contentMapper.modifyContent",vo);
	}
}
