package com.dk.groupware.data.service;

import org.springframework.stereotype.Service;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.data.dao.DataDao;

@Service
public class DataListService implements ServiceInterface{
	
	//@Resource
	private DataDao dataDao;
	
	public void setDataDao(DataDao dataDao){
		this.dataDao=dataDao;
	}

	@Override
	public Object service(Object obj) {
		System.out.println("DataListService.service()");
		return dataDao.list();
	}

}
