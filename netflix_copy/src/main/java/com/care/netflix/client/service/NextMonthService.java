package com.care.netflix.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.netflix.client.dao.IClientDAO;

@Service
public class NextMonthService {
	
	@Autowired
	private IClientDAO clientDao;
	
	public String nextMonth(String email) {	
		String[] nextMonth = clientDao.NextMonth(email).split("-");
		return nextMonth[0]+"년 "+ nextMonth[1]+"월 " +nextMonth[2]+"일";
	}
	

	
}
