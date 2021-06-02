package br.org.generation.GameStore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.GameStore.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {

	public List<Produto> findAllByDescricaoContainingIgnoreCase(String descricao);

	public List<Produto> findAllByEfeitoContainingIgnoreCase(double efeito);

	public List<Produto> findAllByPesoContainingIgnoreCase(double preco);

	public List<Produto> findFirstByNomeContainingIgnoreCase(String nome);
}
