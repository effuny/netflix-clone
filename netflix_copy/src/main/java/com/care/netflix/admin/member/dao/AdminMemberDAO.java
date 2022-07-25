package com.care.netflix.admin.member.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.netflix.admin.member.vo.AdminMemberVO;



@Repository
public class AdminMemberDAO {
	
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminMemberVO> getAllMember(HashMap<String, Object> map){
    	System.out.println("DAO - Member - getAllMember - MyBatis 실행 ------");
		return mybatis.selectList("memberMapper.getAllMember",map);	
	}
	
	
	
	public List<Map<String, String>> monthAnalysisData(){
		System.out.println("member-MyBatis - monthAnalysisData- 차트 분석 데이터 조회");
		return mybatis.selectList("memberMapper.monthAnalysisData"); } 
	public List<Map<String, String>> AnalysisData(){
		System.out.println("member-MyBatis - AnalysisData- 차트 분석 데이터 조회"); 
		return mybatis.selectList("memberMapper.AnalysisData"); }
	
	
	public AdminMemberVO getOneMember(AdminMemberVO vo)throws Exception{
    	System.out.println("DAO - Member - getOneMember - MyBatis 실행 ------");
		return mybatis.selectOne("memberMapper.getOneMember",vo);
	}
	
	public int getTotalCount(HashMap<String, Object> map) {
    	System.out.println("DAO - Member - getTotalCount - MyBatis 실행 ------");
		return mybatis.selectOne("memberMapper.getTotalCount");
	}
	
	public int insertMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - insertMember - MyBatis 실행 ------");
		return mybatis.insert("memberMapper.insertMember",vo);
	}
	
	public int deleteMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - deleteMember - MyBatis 실행 ------");
		return mybatis.delete("memberMapper.deleteMember",vo);
	}
	
	public int modifyMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - modifyMember - MyBatis 실행 ------");
		return mybatis.update("memberMapper.modifyMember",vo);
	}
	
	public List<AdminMemberVO> getAllSales(HashMap<String, Object> map){
    	System.out.println("DAO - Member - getAllSales - MyBatis 실행 ------");
		return mybatis.selectList("memberMapper.getAllSales",map);	
	}
	
	public int deleteSales(AdminMemberVO vo) {
    	System.out.println("DAO - Member - deleteSales - MyBatis 실행 ------");
		return mybatis.delete("memberMapper.deleteSales",vo);
	}
	

}