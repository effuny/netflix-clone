package com.care.netflix.client.login.dao;

import org.springframework.stereotype.Repository;

import com.care.netflix.client.vo.ClientVO;

@Repository
public interface ILoginDAO {
	ClientVO loginProc(ClientVO login);
	
	ClientVO authid(String email);
}
