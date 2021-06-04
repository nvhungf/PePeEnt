package edu.poly.domain;

public class LoginForm {
	private String username, password;
	private boolean rememner;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isRememner() {
		return rememner;
	}
	public void setRememner(boolean rememner) {
		this.rememner = rememner;
	}
	public LoginForm(String username, String password, boolean rememner) {
		super();
		this.username = username;
		this.password = password;
		this.rememner = rememner;
	}
	public LoginForm() {
	}
	
	
}
