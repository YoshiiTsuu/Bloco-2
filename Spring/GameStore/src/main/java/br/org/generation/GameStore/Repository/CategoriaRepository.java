package br.org.generation.GameStore.Repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.GameStore.model.Categoria;

@Repository

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

	public List<Categoria> findAllByDescricaoCategoriaContainingIgnoreCase(String descricaoCategoria);

	public List<Categoria> findAllByCategoriaContainingIgnoreCase(String Categoria);
}
