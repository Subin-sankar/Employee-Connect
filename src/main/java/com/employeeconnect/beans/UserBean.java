package com.employeeconnect.beans;

public class UserBean {
	private int login_Id;
	private String userName;
	private String passWord;
	private String userType;
	public int getLogin_Id() {
		return login_Id;
	}
	public void setLogin_Id(int login_Id) {
		this.login_Id = login_Id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
}
