package com.alikaraca.spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alikaraca.spring.mvc.dao.MusteriDao;
import com.alikaraca.spring.mvc.model.Musteri;
@Service("musteriServis")
public class MusteriServis {
	private MusteriDao musteriDao;
	@Autowired
	public void setMusteriServis(MusteriDao musteriDao) {
		this.musteriDao = musteriDao;
	}
	public boolean musteriEkle(Musteri musteri) {
		return musteriDao.musteriEkle(musteri);
	}
	public List<Musteri> getMusteri(){
		return musteriDao.getMusteri();
	}
	public boolean delete(Integer musteriId) {
		return musteriDao.delete(musteriId);
	}
	
	public boolean update(Musteri musteri) {
		return musteriDao.update(musteri);
	}
}