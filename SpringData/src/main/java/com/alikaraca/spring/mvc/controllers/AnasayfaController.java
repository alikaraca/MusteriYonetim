package com.alikaraca.spring.mvc.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnasayfaController {
	@RequestMapping("/")
	public String anasayfa() {
		return "anasayfa";
	}
}
