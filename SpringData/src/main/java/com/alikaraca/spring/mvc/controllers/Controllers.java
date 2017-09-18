package com.alikaraca.spring.mvc.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alikaraca.spring.mvc.model.Admin;
import com.alikaraca.spring.mvc.model.Musteri;
import com.alikaraca.spring.mvc.service.MusteriServis;

@Controller
public class Controllers {
	@RequestMapping(value="/login")//Giriþ sayfasýný çalýþtýrmayý saðlar.
	public String giris() {
		return "login";
	}
	@RequestMapping("/cikis")//Çýkýþ sayfasýný çalýþtýrmayý saðlar.
	public String cikis() {
		return "cikis";
	}
	private MusteriServis musteriServis; //MüþteriServis sýnýfýmýzdan nesne üretilir.
	@Autowired
	public void setMusteriServis(MusteriServis musteriServis) {
		this.musteriServis = musteriServis;
	}
	/*
	 * Yönetici sayfamýzý çalýþtýrýr devamýnda ise
	 *  hangi yönetici giriþ yapmýþ ise kullanýcý adý ile hoþgeldin mesajý çýkar.
	 */
	@RequestMapping(value="/yonetici", method = RequestMethod.POST)
	public String yonetici(ModelMap model, @ModelAttribute("admin") Admin admin, Principal principal) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String yonetici=auth.getName();
		model.addAttribute("admin",yonetici);
		return "Yonetici";
	}
	@RequestMapping(value = "/musteriEkle")//Müþteri Ekle sayfasýný çalýþtýrýr.
	public String musteriEkle() {
		return "musteriEkle";
	}
	/*
	 * Müþteri ekle sayfasýnda ekle butonuna týklandýðýnda aþaðýdaki kod çalýþýr  ve müþteri
	 * veri tabanýna eklenir.
	 */
	@RequestMapping(value = "/musteriEkle", params = "ekle", method = RequestMethod.POST)
	public String Ekle(Musteri musteri) {
		musteriServis.musteriEkle(musteri);
		return "musteriEkle";
	}
	
	/*
	 * Müþteri listele sayfasýný çalýþtýrýr ve veri tabanýndan müþterileri çekmeye yarayan sýnýfý çaðýrýr.
	 */
	@RequestMapping(value = "/musteriListe")
	public String liste(Model model) {
		List<Musteri> musteri = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri);
		return "musteriListe";
	}
	
	
	/*
	 * Müþteri düzenle sayfasýnda ki silme iþlemini yapar.Sil butonuna týklandýðýnda çaðýrýlýr ve silmek 
	 * için gerekli olan sýnýfa gidilir.
	 */
	@RequestMapping(value = "/musteriDuzenle", method = RequestMethod.POST, params = "delete")
	public String sil(Model model, @ModelAttribute("musteri") Musteri musteri) {
		int musteriId = musteri.getMusteriId();
		System.out.println("MusteriId=" + musteriId);
		musteriServis.delete(musteriId);
		List<Musteri> musteri1 = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri1);
		return "musteriDuzenle";
	}
	
	/*
	 * Müþteri düzenle sayfasýnda ki güncelleme iþlemini yapar.Güncelle butonuna týklandýðýnda çaðýrýlýr ve
	 * güncellemek için gerekli olan sýnýfa gidilir.
	 */
	@RequestMapping(value = "/musteriDuzenle", method = RequestMethod.POST, params = "update")
	public String guncelle(Model model, @ModelAttribute("musteri") Musteri musteri) {
		musteriServis.update(musteri);
		List<Musteri> musteri1 = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri1);
		return "musteriDuzenle";
	}
	
	/*
	 * Müþteri düzenle sayfasýný çalýþtýrýr.
	 */
	@RequestMapping(value = "/musteriDuzenle")
	public String duzenle(Model model, @ModelAttribute("musteri") Musteri musteri) {
		List<Musteri> musteri2 = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri2);
		return "musteriDuzenle";
	}
}
