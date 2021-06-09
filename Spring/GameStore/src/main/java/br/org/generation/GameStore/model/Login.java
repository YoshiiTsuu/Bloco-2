package br.org.generation.GameStore.model;
//Não gera tabela no banco de dados
//serve como base para fazer o login
public class Login {

	private String nome;//nome 
	private String usuario;//usuario para login
	private String senha;
	private String token;//token para autenticação
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
}
