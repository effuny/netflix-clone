package com.care.netflix.contents.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.netflix.contents.dao.IContentsDAO;
import com.care.netflix.contents.vo.ContentsVO;

@Service
public class ContentsService implements IContentsService{
	@Autowired private IContentsDAO contentsDao;
	@Autowired private HttpSession session;
	@Override
	public List<ContentsVO> ContentsList() {
	
		return contentsDao.selectAllContents();
	}
	
	
	
	
	

}
