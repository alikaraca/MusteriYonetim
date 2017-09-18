package com.alikaraca.spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alikaraca.spring.mvc.dao.KullanıcıDao;
import com.alikaraca.spring.mvc.model.Admin;

@Service("kullanıcıServis")
public class KullanıcıServis {
	private KullanıcıDao kullanıcıDao;
	@Autowired
	public void setKullanıcıServis(KullanıcıDao kullanıcıDao) {
		this.kullanıcıDao=kullanıcıDao;
	}
	public List<Admin> getCurrent(){
		return kullanıcıDao.getAdmin();	
	}
}
