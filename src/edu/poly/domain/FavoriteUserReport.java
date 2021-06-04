package edu.poly.domain;

import java.util.Date;

public class FavoriteUserReport {
	private String username;
	private String fullname;
	private String email;
	private Date likedDate;
	public FavoriteUserReport() {
		
	}
	public FavoriteUserReport(String username, String fullname, String email, Date likedDate) {
		
		this.username = username;
		this.fullname = fullname;
		this.email = email;
		this.likedDate = likedDate;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getLikedDate() {
		return likedDate;
	}
	public void setLikedDate(Date likedDate) {
		this.likedDate = likedDate;
	}
}
