package br.org.generation.GameStore.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.sun.istack.NotNull;

@Entity
//entity garante a criação da tabela
@Table(name = "tb_categoria")
// aqui você define o nome da tabela
public class Categoria {

	@Id // diz que esta é a chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@NotNull
	private String descricaoCategoria;//
	@NotNull
	private String categoria; // ação, aventura, just chill etc
	
	@OneToMany(mappedBy = "categoria" , cascade = CascadeType.ALL)
	@JsonIgnoreProperties("categoria")
	private List<Produto> produto; // Indicar quais produto

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDescricaoCategoria() {
		return descricaoCategoria;
	}

	public void setDescricaoCategoria(String descricaoCategoria) {
		this.descricaoCategoria = descricaoCategoria;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

}
