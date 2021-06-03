package br.org.generation.Drogaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import br.org.generation.Drogaria.model.Categoria;
import br.org.generation.Drogaria.repository.CategoriaRepositorio;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {

	@Autowired
	private CategoriaRepositorio repository;

	@GetMapping
	public ResponseEntity<List<Categoria>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Categoria> GetById(@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());

	}

	@GetMapping("/descricao")
	public ResponseEntity<List<Categoria>> GetByDescricao(@PathVariable String descricao) {
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(descricao));
	}

	@GetMapping("/efeito")
	public ResponseEntity<List<Categoria>> GetByEfeito(@PathVariable String efeito) {
		return ResponseEntity.ok(repository.findAllByEfeitoContainingIgnoreCase(efeito));
	}

	@PostMapping
	public ResponseEntity<Categoria> post(@RequestBody Categoria post) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(post));
	}

	@PutMapping
	public ResponseEntity<Categoria> put(@RequestBody Categoria put) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(put));
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}

}
