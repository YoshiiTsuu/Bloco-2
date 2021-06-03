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

import br.org.generation.Drogaria.model.Produto;
import br.org.generation.Drogaria.repository.ProdutoRepository;

@Controller
@RequestMapping("/produto")
public class ProdutoController {

	@Autowired
	private ProdutoRepository repository;

	@GetMapping
	public ResponseEntity<List<Produto>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Produto> GetById(long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/nome/")
	public ResponseEntity<List<Produto>> GetByNome(String nome) {
		return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));
	}

	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Produto>> GetByUmNome(String nome) {
		return ResponseEntity.ok(repository.findFirstByNomeContainingIgnoreCase(nome));
	}

	@GetMapping("/{descricao}")
	public ResponseEntity<List<Produto>> GetByDescricao(String descricao) {
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(descricao));

	}

	@PostMapping()
	public ResponseEntity<Produto> Post(@RequestBody Produto post) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(post));
	}

	@PutMapping()
	public ResponseEntity<Produto> Put(@RequestBody Produto post) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(post));

	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}
}
