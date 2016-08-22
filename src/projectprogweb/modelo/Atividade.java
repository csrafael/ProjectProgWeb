package projectprogweb.modelo;

public class Atividade {
	
	private String criador;
	private String titulo;
	private String descricao;
	private String data;
	private String inscritos;
	
	public String getCriador() {
		return criador;
	}
	public void setCriador(String criador) {
		this.criador = criador;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getInscritos() {
		return inscritos;
	}
	public void setInscritos(String inscritos) {
		this.inscritos = inscritos;
	}
}
