package com.dk.groupware.member.service;

import org.springframework.stereotype.Service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.member.dao.MemberDao;

@Service
public class MemberListService implements ServiceInterface{

	// xml <bean>에서 <property>니까 -> private
	private MemberDao memberDao;
	
	// setters
	public void setMemberDao(MemberDao memberDao){
		this.memberDao=memberDao;
	}
	
	@Override
	public Object service(Object obj) {
		System.out.println("MemberListService.service()");
		return memberDao.list();
	}

}
