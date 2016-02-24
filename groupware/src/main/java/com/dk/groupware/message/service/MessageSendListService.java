package com.dk.groupware.message.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.dao.MessageDao;

public class MessageSendListService implements ServiceInterface{

	private MessageDao messageDao;
	
	// setter
	public void setMessageDao(MessageDao messageDao){
		this.messageDao = messageDao;
	}
	
	// 보낸 쪽지 리스트
	@Override
	public Object service(Object obj) {
		// TODO Auto-generated method stub
		System.out.println("MessageSendListService.service()");
		return messageDao.sendList(obj);
	}

}
