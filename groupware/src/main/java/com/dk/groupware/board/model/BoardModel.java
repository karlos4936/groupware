package com.dk.groupware.board.model;

import java.util.List;

import com.dk.groupware.common.model.JspData;

public class BoardModel {

	// 게시판 리스트를 담는 List 객체 변수 선언
	private List<Board> list;
	private JspData jspdate;
	
	public List<Board> getList() {
		return list;
	}
	public void setList(List<Board> list) {
		this.list = list;
	}
	public JspData getJspdate() {
		return jspdate;
	}
	public void setJspdate(JspData jspdate) {
		this.jspdate = jspdate;
	}

	
}
