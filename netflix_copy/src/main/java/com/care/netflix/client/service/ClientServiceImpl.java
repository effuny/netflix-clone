package com.care.netflix.client.service;

import java.util.ArrayList;

/*import java.util.ArrayList;*/

/*import javax.servlet.http.HttpSession;*/

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.beans.factory.annotation.Value;*/
/*import org.springframework.context.annotation.PropertySource;*/
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
/*import org.springframework.ui.Model;*/

import com.care.netflix.client.dao.IClientDAO;
import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.client.vo.PostcodeDTO;

/*@PropertySource("classpath:adminAccount.properties")*/
@Service
public class ClientServiceImpl implements IClientService {
	@Autowired private IClientDAO clientDao;
	/*
	 * @Autowired private HttpSession session;
	 */

	@Override
	public String isExistEmail(String email) {
		if (email == null)
			return "이메일을 입력 후 다시 시도하세요.";
		int count = clientDao.isExistEmail(email);
		if (count == 1)
			return "중복 아이디 입니다.";

		return "사용 가능한 아이디입니다.";
	}
	
	 @Override
	  public String clientProc(ClientVO client, PostcodeDTO post) {
		 ClientVO login = client;
	  
		 if (login.getEmail() == null || login.getEmail().isEmpty()) 
			 return "이메일을 입력하세요.";
	  
		 if (login.getPassword() == null || login.getPassword().isEmpty()) 
			 return "비밀번호를 입력하세요.";
	  
		 if (clientDao.isExistEmail(login.getEmail()) > 0) 
			 return "중복 이메일 입니다.";
	  
	  
	  BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); 
	  String securePw = encoder.encode(login.getPassword()); 
	  login.setPassword(securePw);
	  
	  clientDao.insertLogin(login);
	  
	  return "가입 완료";
	  
	 
	 }
	 
	 @Override
	 public String nextMonth(String email) {
		 
		 String[] nextMonth = clientDao.NextMonth(email).split("-");
			return nextMonth[0]+"년 "+ nextMonth[1]+"월 " +nextMonth[2]+"일";
		 
	 }
	 
	 @Override
	 public void modifyPassword(ClientVO clientvo) {
			clientDao.modifyPassword(clientvo);
		}



	@Override
	public void DeleteMembership(ClientVO clientvo) {
		clientDao.DeleteMembership(clientvo);
		
	}

	@Override
	public void dropMember(ClientVO clientvo) {
		clientDao.dropMember(clientvo);
		
		
	}

}
  
  
 
 
