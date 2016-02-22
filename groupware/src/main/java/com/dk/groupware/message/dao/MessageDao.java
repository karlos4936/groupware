package com.dk.groupware.message.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.dk.groupware.message.model.Message;

public class MessageDao {
	
	// sql의 데이터 소스 import
	private SqlSessionTemplate sqlSessionTemplate;

	// setter
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// 쪽지 (보내기/받기/읽기/삭제) dao 
	
	// 받은쪽지 목록 가져오기 - list
	public Object list(){
		System.out.println("MessageDao.list()");
		return sqlSessionTemplate.selectList("dao.Message.list");
	}
	
	// 쪽지 보내기 - write
	public Object write(Message message){
		System.out.println("MessageDao.write()");
		sqlSessionTemplate.insert("dao.Message.write", message);
		return null;
	}
	
	// 받은 쪽지 보기 - view
	public Object view(Object obj){
		System.out.println("MessageDao.view()");
		return sqlSessionTemplate.selectOne("dao.Message.view", obj);
		
	}
	// 쪽지 읽음 처리 - update
	public Object update(Message message){
		System.out.println("MessageDao.update()");
		sqlSessionTemplate.update("dao.Message.update", message);
		return null;
	}
	
	// 받은 쪽지 삭제 - delete
	public Object delete(Object obj){
		System.out.println("MessageDao.delete()");
		sqlSessionTemplate.delete("dao.Message.delete", obj);
		return null;
	}

	// 보낸 쪽지 리스트
	public Object sendList() {
		// TODO Auto-generated method stub
		System.out.println("MessageDao.sendList()");
		return sqlSessionTemplate.selectList("dao.Message.sendList");
	}

	// 보낸 쪽지 보기
	public Object sendView(Object obj) {
		// TODO Auto-generated method stub
		System.out.println("MessageDao.sendView()");
		return sqlSessionTemplate.selectOne("dao.Message.sendView", obj);
	}

	// 보낸 쪽지 삭제
	public Object sendDelete(Object obj) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.delete("dao.Message.sendDelete", obj);
		return obj;
	}
	
	
	
//	// 보낸쪽지(받은쪽지) 갯수 
//	public Integer totalCount(Integer int){
//		System.out.println("MessageDao.totalCount()");
//		sqlSessionTemplate.selectOne("dao.Message.totalCount", obj);
//		return null;
//	}
}
