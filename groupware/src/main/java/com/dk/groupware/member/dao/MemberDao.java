package com.dk.groupware.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.dk.groupware.member.model.Member;

public class MemberDao {

	// xml <bean>에서 <property>니까 -> private
	private SqlSessionTemplate sqlSessionTemplate;
	
	// setter
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
		this.sqlSessionTemplate=sqlSessionTemplate;
	}
	
	// 사원 리스트
	public Object list() {
		// TODO Auto-generated method stub
		System.out.println("MemberDao.list()");
		return sqlSessionTemplate.selectList("dao.Member.list");
	}

	// 사원 정보 보기 - 정보 수정
	public Object view(Object obj) {
		// TODO Auto-generated method stub
		System.out.println("MemberDao.view()");
		return sqlSessionTemplate.selectOne("dao.Member.view", obj);
	}

	// 사원 정보 수정 처리
	public Object update(Member member) {
		// TODO Auto-generated method stub
		System.out.println("MemberDao.update()");
		sqlSessionTemplate.update("dao.Member.update", member);
		return null;
	}

	// 사원 등록
	public Object write(Member member) {
		// TODO Auto-generated method stub
		System.out.println("MemberDao.write()");
		sqlSessionTemplate.insert("dao.Member.write", member);
		return null;
	}

	// 사원 탈퇴(퇴사)
	public Object delete(Object obj) {
		System.out.println("MemberDao.delete()"); 
		sqlSessionTemplate.delete("dao.Member.delete", obj);
		return null;
	}

	// 내정보 보기
	public Object mview(Object obj){
		System.out.println("MemberDao.mview()");
		return sqlSessionTemplate.selectOne("dao.Member.mview", obj);
	}
	
	// 내정보 수정
	public Object mupdate(Member member) {
		System.out.println("MemberDao.mupdate()");
		sqlSessionTemplate.update("dao.Member.mupdate", member);
		return null;
	}

	// 로그인
	public Object login(Member member) {
		System.out.println("MemberDao.login()");
		return sqlSessionTemplate.selectOne("dao.Member.login", member);
	}

	



}
