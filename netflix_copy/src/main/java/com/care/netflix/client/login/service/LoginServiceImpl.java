package com.care.netflix.client.login.service;

import java.io.BufferedReader; 
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.netflix.client.login.dao.ILoginDAO;
import com.care.netflix.client.vo.ClientVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class LoginServiceImpl implements ILoginService{
	@Autowired private ILoginDAO loginDao;
	@Autowired private HttpSession session;
	
	@Override
	public String loginProc(ClientVO login) {
		if(login.getEmail() == null || login.getEmail().isEmpty())
			return "이메일을 입력하세요.";
		
		if(login.getPassword() == null || login.getPassword().isEmpty())
			return "비밀번호를 입력하세요.";
		
//		System.out.println(login.getEmail()); ok
//		System.out.println(login.getPassword()); ok
		
		//오류 상황 : 
//					우리가 참조하는 깃헙프로젝트의 테이블의 아이디는 email로 되어있어서 바꿔줘야합니다.
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		ClientVO check = loginDao.loginProc(login);
		
/*		ClientLoginVO check = loginDao.loginProc(login);
		if(check != null && encoder.matches(login.getPassword(), check.getPassword())) {
			session.setAttribute("email", check.getEmail());
			return "로그인 성공";
		}else
			return "이메일 또는 비밀번호를 확인하세요";
	}
}*/
		
//		String ckpw = encoder.encode(check.getPassword());
		
		
		if(check != null && encoder.matches(login.getPassword(), check.getPassword())) {
			session.setAttribute("email", check.getEmail());
			return "로그인 성공";
		}else
			return "아이디 또는 비밀번호를 확인하세요.";
	}
	
	@Override
	 public ClientVO selectEmail(String eMail) {
		
		ClientVO sMypageInfo = loginDao.authid(eMail);
		
		return sMypageInfo;
	}
	
	@Override
	public ClientVO deleteMembershipService(String eMail) {
		
		ClientVO sMypageInfo = loginDao.authid(eMail);
		
		return sMypageInfo;
	}
	
	//https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#refresh-token
	public String getAccessToken (String code) {
		String accessToken = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			String sendMessage = "grant_type=authorization_code" 
					+ "&client_id=12dd61f32d7db37f0c881f7f7a98e934"
					+"&redirect_uri=http://localhost:8086/netflix/kakaoLogin" 
					+ "&code=" + code;
		
			URL url = new URL(reqURL); // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST"); //POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
			conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정
			
			// 기본 outputStream을 통해 문자열로 처리할 수 있는 OutPutStreamWriter 변환 후 처리속도를 빠르게 하기위한
			// BufferedWriter로 변환해서 사용한다.
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(sendMessage); 
			bw.flush();
			
			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("responseCode : " + responseCode);
			
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "", result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
/*
response body : 
{
"access_token":"bVNhfCi9cWzt9sKzgmiaT5YQvy4DZI-hChcxVQo9c5sAAAGAbc6Yzw",
"token_type":"bearer",
"refresh_token":"CjnYSnj_dlOtK7lfekkkRcFnlMrVHXp3bbmk9Qo9c5sAAAGAbc6YzQ",
"expires_in":21599,
"scope":"profile_nickname",
"refresh_token_expires_in":5183999
}				
*/
			System.out.println("response body : " + result);
//			System.out.println("result.split : " + result.split(","));
			
			//Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonElement element = JsonParser.parseString(result);
			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			System.out.println("access_token : " + accessToken);
			
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return accessToken;
	}
	
	//https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#req-user-info
	public HashMap<String, Object> getUserInfo (String accessToken) {
	    HashMap<String, Object> userInfo = new HashMap<String, Object>();
	    String reqURL = "https://kapi.kakao.com/v2/user/me";
	    
	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        
	        // 요청에 필요한 Header에 포함될 내용
	        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
	        
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        String line = "";
	        String result = "";
	        while ((line = br.readLine()) != null) {
	            result += line;
	        }
	        System.out.println("response body : " + result);
/*
response body : 
{
"id":2220039319,
"connected_at":"2022-04-28T01:34:58Z",
"properties":{"nickname":"김연수"},
"kakao_account":{"profile_nickname_needs_agreement":false,"profile":{"nickname":"김연수"}}
}
*/
	        JsonElement element = JsonParser.parseString(result);
//	        JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
//	        String nickname = properties.getAsJsonObject().get("nickname").getAsString();
	        
	        JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
	        JsonObject profile = kakao_account.getAsJsonObject().get("profile").getAsJsonObject();
	        String nickname = profile.getAsJsonObject().get("nickname").getAsString();
	        
	        userInfo.put("nickname", nickname);
	        
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return userInfo;
	}
	
	public void logout(String accessToken) {
	    String reqURL = "https://kapi.kakao.com/v1/user/logout";
	    
	    try {
	        URL url = new URL(reqURL); // URL 객체 생성
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); 
	        conn.setRequestMethod("POST"); // 메소드 설정
	        
	        // 요청 정보 헤더에 담기.
	        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
	        // 응답 코드 확인
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);
	    }catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}

