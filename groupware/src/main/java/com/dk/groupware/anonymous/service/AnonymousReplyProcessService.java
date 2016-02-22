package com.dk.groupware.anonymous.service;

import com.dk.groupware.anonymous.dao.AnonymousDao;
import com.dk.groupware.anonymous.model.AnonymousReply;
import com.dk.groupware.common.ServiceInterface;

public class AnonymousReplyProcessService implements ServiceInterface {
	private AnonymousDao anonymousDao;
	
	public void setAnonymousDao(AnonymousDao anonymousDao) {
		this.anonymousDao = anonymousDao;
	}
	
	@Override
	public Object service(Object obj) {
		System.out.println("AnonymousReplyProcessService.service()");
		
		AnonymousReply anonymousReply = (AnonymousReply) obj;
		anonymousReply.setWriter(getMD5(anonymousReply.getWriter()));
		
//		anonymousDao.reply(anonymousReply);
		return null;
	}
	
	private String getMD5(String str) {
		StringBuffer sb = new StringBuffer();
		try {
			byte[] digest = java.security.MessageDigest.getInstance("MD5").digest(str.getBytes());
			sb.setLength(0);
			for(int i=0; i<digest.length; i++) {
				sb.append(Integer.toString((digest[i] & 0xf0) >> 4, 16));
				sb.append(Integer.toString(digest[i] & 0x0f, 16));
			}
			 return sb.toString();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
