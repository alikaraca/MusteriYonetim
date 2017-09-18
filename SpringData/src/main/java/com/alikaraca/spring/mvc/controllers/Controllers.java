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
	@RequestMapping(value="/login")//Giri� sayfas�n� �al��t�rmay� sa�lar.
	public String giris() {
		return "login";
	}
	@RequestMapping("/cikis")//��k�� sayfas�n� �al��t�rmay� sa�lar.
	public String cikis() {
		return "cikis";
	}
	private MusteriServis musteriServis; //M��teriServis s�n�f�m�zdan nesne �retilir.
	@Autowired
	public void setMusteriServis(MusteriServis musteriServis) {
		this.musteriServis = musteriServis;
	}
	/*
	 * Y�netici sayfam�z� �al��t�r�r devam�nda ise
	 *  hangi y�netici giri� yapm�� ise kullan�c� ad� ile ho�geldin mesaj� ��kar.
	 */
	@RequestMapping(value="/yonetici", method = RequestMethod.POST)
	public String yonetici(ModelMap model, @ModelAttribute("admin") Admin admin, Principal principal) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String yonetici=auth.getName();
		model.addAttribute("admin",yonetici);
		return "Yonetici";
	}
	@RequestMapping(value = "/musteriEkle")//M��teri Ekle sayfas�n� �al��t�r�r.
	public String musteriEkle() {
		return "musteriEkle";
	}
	/*
	 * M��teri ekle sayfas�nda ekle butonuna t�kland���nda a�a��daki kod �al���r  ve m��teri
	 * veri taban�na eklenir.
	 */
	@RequestMapping(value = "/musteriEkle", params = "ekle", method = RequestMethod.POST)
	public String Ekle(Musteri musteri) {
		musteriServis.musteriEkle(musteri);
		return "musteriEkle";
	}
	
	/*
	 * M��teri listele sayfas�n� �al��t�r�r ve veri taban�ndan m��terileri �ekmeye yarayan s�n�f� �a��r�r.
	 */
	@RequestMapping(value = "/musteriListe")
	public String liste(Model model) {
		List<Musteri> musteri = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri);
		return "musteriListe";
	}
	
	
	/*
	 * M��teri d�zenle sayfas�nda ki silme i�lemini yapar.Sil butonuna t�kland���nda �a��r�l�r ve silmek 
	 * i�in gerekli olan s�n�fa gidilir.
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
	 * M��teri d�zenle sayfas�nda ki g�ncelleme i�lemini yapar.G�ncelle butonuna t�kland���nda �a��r�l�r ve
	 * g�ncellemek i�in gerekli olan s�n�fa gidilir.
	 */
	@RequestMapping(value = "/musteriDuzenle", method = RequestMethod.POST, params = "update")
	public String guncelle(Model model, @ModelAttribute("musteri") Musteri musteri) {
		musteriServis.update(musteri);
		List<Musteri> musteri1 = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri1);
		return "musteriDuzenle";
	}
	
	/*
	 * M��teri d�zenle sayfas�n� �al��t�r�r.
	 */
	@RequestMapping(value = "/musteriDuzenle")
	public String duzenle(Model model, @ModelAttribute("musteri") Musteri musteri) {
		List<Musteri> musteri2 = musteriServis.getMusteri();
		model.addAttribute("musteri", musteri2);
		return "musteriDuzenle";
	}
}
