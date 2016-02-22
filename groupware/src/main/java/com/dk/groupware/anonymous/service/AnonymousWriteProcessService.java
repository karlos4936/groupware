package com.dk.groupware.anonymous.service;

import com.dk.groupware.anonymous.dao.AnonymousDao;
import com.dk.groupware.anonymous.model.Anonymous;
import com.dk.groupware.common.ServiceInterface;

public class AnonymousWriteProcessService implements ServiceInterface {
	private AnonymousDao anonymousDao;
	
	public void setAnonymousDao(AnonymousDao anonymousDao) {
		this.anonymousDao = anonymousDao;
	}
	
	@Override
	public Object service(Object obj) {
		System.out.println("AnonymousWriteProcessService.service()");
		
		Anonymous anonymous = (Anonymous) obj;
		anonymous.setWriter(getMD5(anonymous.getWriter()));
		
		anonymousDao.write(anonymous);
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
