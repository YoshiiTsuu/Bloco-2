package atividade2Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class controllerObjetivos {

	@GetMapping ("/atividade1")
	public String atividade2 () {
		return "Tenho intuito de melhorar minhas técnicas em Spring, e poder criar meu blog até o fim desta semana!";
	}
}
