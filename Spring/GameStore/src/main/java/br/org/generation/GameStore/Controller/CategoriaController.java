package br.org.generation.GameStore.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.generation.GameStore.Repository.CategoriaRepository;
import br.org.generation.GameStore.model.Categoria;

@RestController
@RequestMapping("/categoria")
@CrossOrigin("*")
public class CategoriaController {

	@Autowired
	private CategoriaRepository repository;

	@GetMapping() // findAll
	public ResponseEntity<List<Categoria>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}") // findAll by Id
	public ResponseEntity<Categoria> GetById(@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/{categoria}") // find By categoria
	public ResponseEntity<List<Categoria>> GetByCategoria(@PathVariable String Categoria) {
		return ResponseEntity.ok(repository.findAllByCategoriaContainingIgnoreCase(Categoria));

	}

	@GetMapping("/{descricao}") // find categoria
	public ResponseEntity<List<Categoria>> GetByDescricao(@PathVariable String descricao) {
		return ResponseEntity.ok(repository.findAllByDescricaoCategoriaContainingIgnoreCase(descricao));
	}

	@PostMapping("/post")
	public ResponseEntity<Categoria> post(@RequestBody Categoria post) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(post));
	}

	@PutMapping("/put")
	public ResponseEntity<Categoria> put(@RequestBody Categoria update) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(update));
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}
}
