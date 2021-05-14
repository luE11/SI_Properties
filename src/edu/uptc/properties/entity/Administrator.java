package edu.uptc.properties.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "administrators")
public class Administrator implements Serializable{
	
	private static final long serialVersionUID=1L;
	@Id
	@Column(name="admin_id")
	private int id;
	@Column(name="admin_user")
	private String adminName;
	@Column(name="admin_pwd")
	private String adminPwd;
	
	public Administrator() {
		
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return adminName;
	}

	public String getUserpwd() {
		return adminPwd;
	}
	
}
