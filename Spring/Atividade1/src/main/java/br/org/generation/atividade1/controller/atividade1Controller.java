package br.org.generation.atividade1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // Anotação que indica classe controladora!
//Use Ctrl+Shift+O
public class atividade1Controller {

	@GetMapping("/atividade1") // O próximo método vai ser do tipo GET
	public String sayHello() {

		return "Habilidades: Atenção aos detalhes \nMentalidades: Persistência";
	}

}
