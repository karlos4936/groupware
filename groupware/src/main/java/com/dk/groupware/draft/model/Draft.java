package com.dk.groupware.draft.model;

public class Draft {
	private int no;
	private String title;
	private String content;
	private String drafter;
	private String depname;
	private String signer1;
	private String signer2;
	private String signer3;
	private char isSign1;
	private char isSign2;
	private char isSign3;
	private String regDate;
	private String signDate;

	public Draft() {
	}

	public Draft(int no, String title, String content, String drafter, String depname, String signer1, String signer2,
			String signer3, char isSign1, char isSign2, char isSign3, String regDate, String signDate) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.drafter = drafter;
		this.depname = depname;
		this.signer1 = signer1;
		this.signer2 = signer2;
		this.signer3 = signer3;
		this.isSign1 = isSign1;
		this.isSign2 = isSign2;
		this.isSign3 = isSign3;
		this.regDate = regDate;
		this.signDate = signDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDrafter() {
		return drafter;
	}

	public void setDrafter(String drafter) {
		this.drafter = drafter;
	}

	public String getDepname() {
		return depname;
	}

	public void setDepname(String depname) {
		this.depname = depname;
	}

	public String getSigner1() {
		return signer1;
	}

	public void setSigner1(String signer1) {
		this.signer1 = signer1;
	}

	public String getSigner2() {
		return signer2;
	}

	public void setSigner2(String signer2) {
		this.signer2 = signer2;
	}

	public String getSigner3() {
		return signer3;
	}

	public void setSigner3(String signer3) {
		this.signer3 = signer3;
	}

	public char getIsSign1() {
		return isSign1;
	}

	public void setIsSign1(char isSign1) {
		this.isSign1 = isSign1;
	}

	public char getIsSign2() {
		return isSign2;
	}

	public void setIsSign2(char isSign2) {
		this.isSign2 = isSign2;
	}

	public char getIsSign3() {
		return isSign3;
	}

	public void setIsSign3(char isSign3) {
		this.isSign3 = isSign3;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getSignDate() {
		return signDate;
	}

	public void setSignDate(String signDate) {
		this.signDate = signDate;
	}

	@Override
	public String toString() {
		return "Draft [no=" + no + ", title=" + title + ", content=" + content + ", drafter=" + drafter + ", depname="
				+ depname + ", signer1=" + signer1 + ", signer2=" + signer2 + ", signer3=" + signer3 + ", isSign1="
				+ isSign1 + ", isSign2=" + isSign2 + ", isSign3=" + isSign3 + ", regDate=" + regDate + ", signDate="
				+ signDate + "]";
	}

}
