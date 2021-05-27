package br.org.generation.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // Anotação que indica classe controladora!
//Use Ctrl+Shift+O
public class HelloController {

	@GetMapping("/hello") // O próximo método vai ser do tipo GET
	public String sayHello() {

		return "II otenki desu ne";

}
}