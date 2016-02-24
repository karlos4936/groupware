package com.dk.groupware.anonymous.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.dk.groupware.anonymous.model.Anonymous;

public class AnonymousDao {
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public Object list() {
		System.out.println("AnonymousDao.list()");
		return sqlSessionTemplate.selectList("dao.Anonymous.list");
	}
	
	public Object view(Object obj) {
		System.out.println("AnonymousDao.view()");
		return sqlSessionTemplate.selectOne("dao.Anonymous.view", obj);
	}
	
	public Object update(Anonymous anonymous) {
		System.out.println("AnonymousDao.update()");
		sqlSessionTemplate.update("dao.Anonymous.update", anonymous);
		return null;
	}
	
	public Object write(Object obj) {
		System.out.println("AnonymousDao.write()");
		sqlSessionTemplate.insert("dao.Anonymous.write", obj);
		return null;
	}
	
	public Object delete(Object obj) {
		System.out.println("AnonymousDao.delete()");
		sqlSessionTemplate.delete("dao.Anonymous.delete", obj);
		return null;
	}
	
	public Object increase(Object obj) {
		System.out.println("AnonymousDao.increase()");
		return sqlSessionTemplate.update("dao.Anonymous.increase", obj);
	}

	public Object replyWrite(Object obj) {
		System.out.println("AnonymousDao.replyWrite()");
		sqlSessionTemplate.insert("dao.Anonymous.replyWrite", obj);
		return null;
	}
}
