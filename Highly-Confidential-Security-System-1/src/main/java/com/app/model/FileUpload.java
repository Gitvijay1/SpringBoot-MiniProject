package com.app.model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "upload")
public class FileUpload {
	@Id
	private Integer id;
	@Lob
	private byte[] ducument;
	public FileUpload() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public byte[] getDucument() {
		return ducument;
	}
	public void setDucument(byte[] ducument) {
		this.ducument = ducument;
	}
	@Override
	public String toString() {
		return "FileUpload [id=" + id + ", ducument=" + Arrays.toString(ducument) + "]";
	}
	

}
