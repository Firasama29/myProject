package com.doc.myprojects.dto;

import java.io.Serializable;

public class LoginDTO implements Serializable{
	
	private static final long serialVersionUID = -5022099003267814765L;
	private long id;
	private String email;
	private String password;

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", email=" + email + ", password=" + password + "]";
	}
}
