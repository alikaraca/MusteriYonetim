package com.alikaraca.spring.mvc.model;


/*
 * Müþteri veritabanýnda bulunan kolonlara uygun olarak yazýlan Model sýnýfýmýz aþaðýdaki þekildedir.
 */
public class Musteri {
	private int musteriId;
	private String musteriAd;
	private String musteriSoyad;
	private String musteriNo;
	private String musteriAdres;
	private String musteriEmail;
	
	public Musteri() {
		
	}
	public Musteri(int musteriId, String musteriAd, String musteriSoyad, String musteriNo, String musteriAdres,
			String musteriEmail) {
		super();
		this.musteriId = musteriId;
		this.musteriAd = musteriAd;
		this.musteriSoyad = musteriSoyad;
		this.musteriNo = musteriNo;
		this.musteriAdres = musteriAdres;
		this.musteriEmail = musteriEmail;
	}
	public int getMusteriId() {
		return musteriId;
	}
	public void setMusteriId(int musteriId) {
		this.musteriId = musteriId;
	}
	public String getMusteriAd() {
		return musteriAd;
	}
	public void setMusteriAd(String musteriAd) {
		this.musteriAd = musteriAd;
	}
	public String getMusteriSoyad() {
		return musteriSoyad;
	}
	public void setMusteriSoyad(String musteriSoyad) {
		this.musteriSoyad = musteriSoyad;
	}
	public String getMusteriNo() {
		return musteriNo;
	}
	public void setMusteriNo(String musteriNo) {
		this.musteriNo = musteriNo;
	}
	public String getMusteriAdres() {
		return musteriAdres;
	}
	public void setMusteriAdres(String musteriAdres) {
		this.musteriAdres = musteriAdres;
	}
	public String getMusteriEmail() {
		return musteriEmail;
	}
	public void setMusteriEmail(String musteriEmail) {
		this.musteriEmail = musteriEmail;
	}
	
}
