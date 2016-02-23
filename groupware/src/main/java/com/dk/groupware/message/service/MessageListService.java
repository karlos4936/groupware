package com.dk.groupware.message.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.dao.MessageDao;

public class MessageListService implements ServiceInterface{

	private MessageDao messageDao;
	
	// setter
	public void setMessageDao(MessageDao messageDao){
		this.messageDao = messageDao;
	}
	
	@Override
	public Object service(Object obj) {
		// TODO Auto-generated method stub
		System.out.println("MessageListService.service()");
		return messageDao.list();
	}

}
