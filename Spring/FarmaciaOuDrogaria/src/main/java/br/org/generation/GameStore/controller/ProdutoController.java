package br.org.generation.GameStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import br.org.generation.GameStore.model.Produto;
import br.org.generation.GameStore.repository.ProdutoRepository;

@Controller
@RequestMapping("/produto")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {

	@Autowired
	private ProdutoRepository repository;

	@GetMapping()
	public ResponseEntity<List<Produto>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Produto> GetById(long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Produto>> GetByNome(String nome) {
		return ResponseEntity.ok(repository.findFirstByNomeContainingIgnoreCase(nome));
	}

	@GetMapping("/peso/{peso}")
	public ResponseEntity<List<Produto>> GetByPeso(Double peso) {
		return ResponseEntity.ok(repository.findAllByPesoContainingIgnoreCase(peso));
	}

	@PostMapping()
	public ResponseEntity<Produto> Post(@RequestBody Produto post) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(post));
	}

	@PutMapping()
	public ResponseEntity<Produto> Put(@RequestBody Produto put) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(put));
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}
}
