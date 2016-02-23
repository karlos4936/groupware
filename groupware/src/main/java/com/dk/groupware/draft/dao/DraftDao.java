package com.dk.groupware.draft.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.dk.groupware.draft.model.Draft;

public class DraftDao {
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public Object list() {
		System.out.println("DraftDao.list()");
		return sqlSessionTemplate.selectList("dao.Draft.list");
	}
	
	public Object write(Draft Draft) {
		System.out.println("DraftDao.write()");
		sqlSessionTemplate.insert("dao.Draft.write",Draft);
		return null;
	}
	
	public Object waitList() {
		System.out.println("DraftDao.waitView()");
		return sqlSessionTemplate.selectList("dao.Draft.waitList");
	}
	
	public Object waitView(Object obj) {
		System.out.println("DraftDao.waitView()");
		return sqlSessionTemplate.selectOne("dao.Draft.waitView", obj);
	}
	
	public Object waitUpdate(Draft draft) {
		System.out.println("DraftDao.waitUpdate()");
		sqlSessionTemplate.update("dao.Draft.update", draft);
		return null;
	}
	
	public Object waitDelete(Object obj) {
		System.out.println("DraftDao.waitDelete()");
		sqlSessionTemplate.delete("dao.Draft.waitDelete", obj);
		return null;
	}
	
	public Object proceedList() {
		System.out.println("DraftDao.proceedList()");
		return sqlSessionTemplate.selectList("dao.Draft.proceedList");
	}
	
	public Object proceedView(Object obj) {
		System.out.println("DraftDao.proceedView()");
		return sqlSessionTemplate.selectOne("dao.Draft.proceedView", obj);
	}
	
	public Object proceedSign(Object obj) {
		System.out.println("DraftDao.proceedSign()");
		sqlSessionTemplate.update("dao.Draft.proceedSign", obj);
		return null;
	}
	
	public Object doneList() {
		System.out.println("DraftDao.doneList()");
		return sqlSessionTemplate.selectList("dao.Draft.doneList");
	}
	
	public Object doneView(Object obj) {
		System.out.println("DraftDao.doneView()");
		return sqlSessionTemplate.selectOne("dao.Draft.doneView", obj);
	}
	
}
