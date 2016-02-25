package com.dk.groupware.message.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.dao.MessageDao;
import com.dk.groupware.message.model.Message;

public class MessageViewService implements ServiceInterface{
	private MessageDao messageDao;
	
	// setter
	public void setMessageDao(MessageDao messageDao){
		this.messageDao = messageDao;
	}
	
	@Override
	public Object service(Object obj) {
		System.out.println("MessageViewService.service()");
		
		Message message = (Message) obj;
		
		message = (Message) messageDao.view(obj);
		
		if(message.getRdate() == null)
			messageDao.update(obj);
		
		return messageDao.view(obj);
	}
}
