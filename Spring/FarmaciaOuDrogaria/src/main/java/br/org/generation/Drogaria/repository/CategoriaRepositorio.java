package br.org.generation.Drogaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.Drogaria.model.Categoria;

@Repository
public interface CategoriaRepositorio extends JpaRepository<Categoria, Long> {

	public List<Categoria> findAllByDescricaoContainingIgnoreCase(String descricao);

	public List<Categoria> findAllByEfeitoContainingIgnoreCase(String efeito);

}
