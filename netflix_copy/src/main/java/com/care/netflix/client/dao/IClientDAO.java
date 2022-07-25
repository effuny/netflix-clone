package com.care.netflix.client.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository; 

//import com.care.netflix.client.vo.AuthInfo;
import com.care.netflix.client.vo.ClientVO;
import org.apache.ibatis.annotations.Param;

@Repository
public interface IClientDAO {

	int isExistEmail(String email);

	void insertLogin(ClientVO login);
	
	void MembershipJoin(ClientVO clientVO);
	
//	void InsertMembership(AuthInfo authInfo);
	
	String NextMonth(String email);
	
	ClientVO AuthForLogin(String email);
	
	void modifyPassword(ClientVO clientVO);

	void DeleteMembership(ClientVO clientvo);
	
	void dropMember(ClientVO clientvo);
	
	void selectPayment(ClientVO clientvo);

	
	
	/* 
	 * void insertMember(MemberDTO member);
	 * 
	 * void insertPost(PostcodeDTO post);
	 * 
	 * // ArrayList<MemberDTO> memberList();
	 * 
	 * Mapper 파일에서 사용 exam) SELECT * FROM member WHERE num BETWEEN #{파라미터명} and #{e}
	 * 
	 * ArrayList<MemberDTO> memberList(@Param("b")int begin, @Param("e")int end,
	 * 
	 * @Param("sel")String select, @Param("search")String search);
	 * 
	 * // AllDTO userAll(String id);
	 * 
	 * MemberDTO userInfo(String id);
	 * 
	 * PostcodeDTO postInfo(String id);
	 * 
	 * LoginDTO userPassword(String id);
	 * 
	 * int updateLogin(LoginDTO login);
	 * 
	 * int updateMember(MemberDTO member);
	 * 
	 * int updatePost(PostcodeDTO post);
	 * 
	 * void deleteLogin(String modifyId);
	 * 
	 * int memberCount();
	 */

}
