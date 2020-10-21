package br.com.mpsp.mpsp.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.mpsp.mpsp.model.BotMpsp;

@Controller
@RequestMapping("/")
public class Mpsp {
	
	@GetMapping
	public String home() {
		return "index";
	}
	
}
