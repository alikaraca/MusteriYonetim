package com.alikaraca.spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alikaraca.spring.mvc.dao.Kullan�c�Dao;
import com.alikaraca.spring.mvc.model.Admin;

@Service("kullan�c�Servis")
public class Kullan�c�Servis {
	private Kullan�c�Dao kullan�c�Dao;
	@Autowired
	public void setKullan�c�Servis(Kullan�c�Dao kullan�c�Dao) {
		this.kullan�c�Dao=kullan�c�Dao;
	}
	public List<Admin> getCurrent(){
		return kullan�c�Dao.getAdmin();	
	}
}
