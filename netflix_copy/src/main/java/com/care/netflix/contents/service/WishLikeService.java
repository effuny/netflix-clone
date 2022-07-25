package com.care.netflix.contents.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.netflix.contents.dao.IContentsDAO;
import com.care.netflix.contents.vo.WishAndLikeVO;

@Service
public class WishLikeService {
	@Autowired private IContentsDAO contentsDao;
	@Autowired private HttpSession session;
	

	
	public List<WishAndLikeVO> wishList(WishAndLikeVO wishLikeVO) {
		
		 return contentsDao.WishInfo(wishLikeVO);
	}
	
	public WishAndLikeVO SelectWishLike(WishAndLikeVO wishLikeVO) {
		return contentsDao.WishLikeInfo(wishLikeVO);
	}
	

	public void UpdateWish(WishAndLikeVO wishLikeVO) {
		contentsDao.UpdateWish(wishLikeVO);
	}
	
	public void InsertWish(WishAndLikeVO wishLikeVO) {
		contentsDao.InsertWish(wishLikeVO);
	}
	
	public void UpdateLike(WishAndLikeVO wishLikeVO) {
		contentsDao.UpdateLike(wishLikeVO);
	}
	
	public void InsertLike(WishAndLikeVO wishLikeVO) {
		contentsDao.InsertLike(wishLikeVO);
	}
	
	public void UpdateDislike(WishAndLikeVO wishLikeVO) {
		contentsDao.UpdateDislike(wishLikeVO);
	}
	
	public void InsertDislike(WishAndLikeVO wishLikeVO) {
		contentsDao.InsertDislike(wishLikeVO);
	}
	
	
	

}
