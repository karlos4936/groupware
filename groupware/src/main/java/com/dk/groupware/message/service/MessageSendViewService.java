package com.dk.groupware.message.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.dao.MessageDao;

public class MessageSendViewService implements ServiceInterface{


		private MessageDao messageDao;
		
		// setter
		public void setMessageDao(MessageDao messageDao){
			this.messageDao = messageDao;
		}
		// 보낸 쪽지 보기
		@Override
		public Object service(Object obj) {
			// TODO Auto-generated method stub
			System.out.println("MessageSendViewService.service()");
			
			return messageDao.sendView(obj);
		}
}
