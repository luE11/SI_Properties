package edu.uptc.properties.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "owners")
public class Owner implements Serializable{
	
	private static final long serialVersionUID=1L;
	@Id
	@Column(name="owner_id")
	private int id;
	@Column(name="owner_user")
	private String ownerName;
	@Column(name="owner_pwd")
	private String ownerPwd;
	@Column(name="owner_phone")
	private String ownerPhone;
	@Column(name="owner_account_status")
	private String accountStatus;
	
	public Owner() {
		
	}

	public int getId() {
		return id;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public String getOwnerPwd() {
		return ownerPwd;
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public String getAccountStatus() {
		return accountStatus;
	}	
	
}
