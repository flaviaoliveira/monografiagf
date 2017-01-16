package client.Tabelas;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table
public class Tipos_Pragas implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue
	private int id_pragas;
	
	@Column
	private String nome;
	
	@Column
	private String descricao;

	
	public int getId_pragas() {
		return id_pragas;
	}

	public void setId_pragas(int id_pragas) {
		this.id_pragas = id_pragas;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
}
