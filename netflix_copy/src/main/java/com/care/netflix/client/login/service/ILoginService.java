package com.care.netflix.client.login.service;

import java.util.HashMap;

import com.care.netflix.client.vo.ClientVO;

public interface ILoginService {
	String loginProc(ClientVO login);
	
	ClientVO selectEmail(String eMail);
	
	ClientVO deleteMembershipService(String eMail);
	
	String getAccessToken (String code);
	
	HashMap<String, Object> getUserInfo (String accessToken);
}
