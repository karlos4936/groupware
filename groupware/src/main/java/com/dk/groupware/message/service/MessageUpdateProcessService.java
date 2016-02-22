package com.dk.groupware.message.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.dao.MessageDao;
import com.dk.groupware.message.model.Message;

public class MessageUpdateProcessService implements ServiceInterface{
		private MessageDao messageDao;
		
		// setter
		public void setMessageDao(MessageDao messageDao){
			this.messageDao = messageDao;
		}
		
		@Override
		public Object service(Object obj) {
			// TODO Auto-generated method stub
			System.out.println("MessageUpdateProcessService.service()");
			messageDao.update((Message)obj);
			return null;
		}
		
		// update
//			return messageDao.list();

		
}
