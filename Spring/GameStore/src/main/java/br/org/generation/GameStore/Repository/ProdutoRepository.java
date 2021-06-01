package br.org.generation.GameStore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.org.generation.GameStore.model.Produto;

import java.util.List;

public interface ProdutoRepository extends JpaRepository<Produto, Long> {

	public List<Produto> findAllByTituloContainingIgnoreCase(String titulo);

	public List<Produto> findAllByDescricaoContainingIgnoreCase(String descricao);

}
