package com.alikaraca.spring.mvc.model;

public class Admin {
	private int yonetici_Id;
	private String k_adi;
	private String parola;
	private boolean enabled;
	
	public Admin() {
		
	}
	public Admin(int yonetici_Id, String k_adi, String parola,boolean enabled) {
		super();
		this.yonetici_Id = yonetici_Id;
		this.k_adi = k_adi;
		this.parola = parola;
		this.enabled=enabled;
	}
	public int getYonetici_Id() {
		return yonetici_Id;
	}
	public void setYonetici_Id(int yonetici_Id) {
		this.yonetici_Id = yonetici_Id;
	}
	public String getK_adi() {
		return k_adi;
	}
	public void setK_adi(String k_adi) {
		this.k_adi = k_adi;
	}
	public String getParola() {
		return parola;
	}
	public void setParola(String parola) {
		this.parola = parola;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
}
