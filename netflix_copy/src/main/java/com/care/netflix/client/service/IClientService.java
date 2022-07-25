package com.care.netflix.client.service;

import java.util.ArrayList;

import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.client.vo.PostcodeDTO;

public interface IClientService {

	// 중복 확인
	public String isExistEmail(String email);
	// 회원 가입
	public String clientProc(ClientVO client, PostcodeDTO post);
	
	public String nextMonth(String email);
	
	// 비밀번호 수정
	void modifyPassword(ClientVO clientvo);
	// 멤버십 해지
	void DeleteMembership(ClientVO clientvo);
	// 멤버십 탈퇴
	void dropMember(ClientVO clientvo);
		
	//ArrayList<ClientVO> selectPayment(ClientVO dbMemberVO);
}
