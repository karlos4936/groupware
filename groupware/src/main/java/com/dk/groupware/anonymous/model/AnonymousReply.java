package com.dk.groupware.anonymous.model;

public class AnonymousReply {
	private int rno;
	private String content;
	private String writer;
	private int no;

	public AnonymousReply(int rno, String content, String writer, int no) {
		this.rno = rno;
		this.content = content;
		this.writer = writer;
		this.no = no;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "AnonymousReply [rno=" + rno + ", content=" + content + ", writer=" + writer + ", no=" + no + "]";
	}
}
