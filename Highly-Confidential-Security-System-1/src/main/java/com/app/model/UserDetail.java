package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "userTable")
public class UserDetail {
	@Id
	@GeneratedValue
	private Integer id;
	private String  panNo;
	private Long    aAdharNo;
	private Long    pasPoNo;
	private Long    bankANo;
	private String  INo;
	
	public UserDetail() {
		super();	
		}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public Long getaAdharNo() {
		return aAdharNo;
	}

	public void setaAdharNo(Long aAdharNo) {
		this.aAdharNo = aAdharNo;
	}

	public Long getPasPoNo() {
		return pasPoNo;
	}

	public void setPasPoNo(Long pasPoNo) {
		this.pasPoNo = pasPoNo;
	}

	public Long getBankANo() {
		return bankANo;
	}

	public void setBankANo(Long bankANo) {
		this.bankANo = bankANo;
	}

	public String getINo() {
		return INo;
	}

	public void setINo(String iNo) {
		INo = iNo;
	}

	@Override
	public String toString() {
		return "UserDetail [id=" + id + ", panNo=" + panNo + ", aAdharNo=" + aAdharNo + ", pasPoNo=" + pasPoNo
				+ ", bankANo=" + bankANo + ", INo=" + INo + "]";
	}
	}
