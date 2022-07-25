package com.care.netflix.contents.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.contents.dao.IContentsDAO;


@Service
public class CheckDuplicateEmailService {
	
	@Autowired
	private IContentsDAO contentsDao;
	
	public boolean checkDuplicateEmail(String email) {
		ClientVO clientVO = contentsDao.AuthForLogin(email);
		if(clientVO==null) {
			return true;//아이디가 없으면 트루반환
		}
		return false;//아이디가 있으면 false 반환
	}
}
