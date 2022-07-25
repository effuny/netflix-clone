package com.care.netflix.contents.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.contents.vo.ContentsVO;
import com.care.netflix.contents.vo.WishAndLikeVO;

@Repository
public interface IContentsDAO {

	List<ContentsVO> selectAllContents();
	
	List<WishAndLikeVO> WishInfo(WishAndLikeVO wishLikeVo);
	
	ClientVO AuthForLogin(String email);
	
	public WishAndLikeVO WishLikeInfo(WishAndLikeVO wishLikeVO);
	
	void UpdateWish(WishAndLikeVO wishLikeVO);
	
	void InsertWish(WishAndLikeVO wishLikeVO);
	
	void UpdateLike(WishAndLikeVO wishLikeVO);
	
	void InsertLike(WishAndLikeVO wishLikeVO);
	
	void UpdateDislike(WishAndLikeVO wishLikeVO);
	
	void InsertDislike(WishAndLikeVO wishLikeVO);
	
}
