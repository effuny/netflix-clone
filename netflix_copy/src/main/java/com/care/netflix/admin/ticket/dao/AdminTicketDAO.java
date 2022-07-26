package com.care.netflix.admin.ticket.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminTicketDAO<AdminTicketVO> {
	
	@Autowired
    private SqlSessionTemplate mybatis;

	public List<AdminTicketVO> getAllTicket(HashMap<String, Object> map){
		System.out.println("DAO - Ticket - getAllticket - MyBatis 실행 ------");
		return mybatis.selectList("ticketMapper.getAllTicket",map);	
	}

	public int insertTicket(AdminTicketVO vo) {
    	System.out.println("DAO - Ticket - insertTicket - MyBatis 실행 ------");
		return mybatis.insert("ticketMapper.insertTicket",vo);
	}
	
	public int deleteTicket(AdminTicketVO vo) {
    	System.out.println("DAO - Ticket - deleteTicket - MyBatis 실행 ------");
		return mybatis.delete("ticketMapper.deleteTicket",vo);
	}
	
	public int modifyTicket(AdminTicketVO vo) {
    	System.out.println("DAO - Ticket - modifyTicket - MyBatis 실행 ------");
		return mybatis.update("ticketMapper.modifyTicket",vo);
	}
}