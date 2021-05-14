package edu.uptc.properties.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "properties")
public class Property implements Serializable{
	private static final long serialVersionUID=1L;
	@Id
	@Column(name="property_id")
	private int id;
	@Column(name="property_name")
	private String propertyName;
	@Column(name="property_address")
	private String property_address;
	@Column(name="property_block")
	private String propertyBlock;
	@Column(name="apartment")
	private String apartment;
	@OneToOne(mappedBy="properties", cascade = {CascadeType.ALL})
	@JoinColumn(name = "owner_id", referencedColumnName = "owner_id")
	private Owner propOwner;
}
