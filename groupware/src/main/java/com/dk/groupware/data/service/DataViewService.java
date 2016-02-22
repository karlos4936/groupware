package com.dk.groupware.data.service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.data.dao.DataDao;

public class DataViewService implements ServiceInterface {
	
	private DataDao dataDao;

	public void setDataDao(DataDao dataDao) {
		this.dataDao=dataDao;
	}

	@Override
	public Object service(Object obj) {
		// TODO Auto-generated method stub
		System.out.println("DataViewService.service()");
		return dataDao.view(obj);
	}

}
