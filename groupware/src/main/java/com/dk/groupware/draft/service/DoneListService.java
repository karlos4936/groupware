package com.dk.groupware.draft.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.draft.dao.DraftDao;

public class DoneListService implements ServiceInterface {
	private DraftDao draftDao;
	
	public void setDraftDao(DraftDao draftDao) {
		this.draftDao = draftDao;
	}
	
	@Override
	public Object service(Object obj) {
		System.out.println("DoneListService.service()");
		return draftDao.doneList();
	}
}
