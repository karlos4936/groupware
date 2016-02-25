//package com.dk.groupware.message.service;
//
//import com.dk.groupware.common.ServiceInterface;
//import com.dk.groupware.message.dao.MessageDao;
//
//public class MessageSearchListService implements ServiceInterface{
//
//	private MessageDao messageDao;
//	
//	// setter
//	public void setMessageDao(MessageDao messageDao){
//		this.messageDao = messageDao;
//	}
//	
//	@Override
//	public Object service(Object obj) {
//		System.out.println("MessageSearchListService.service()");
//		return messageDao.searchList(obj);
//	}
//
//}
