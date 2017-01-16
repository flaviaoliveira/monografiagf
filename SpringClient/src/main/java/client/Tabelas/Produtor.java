package client.Tabelas;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table
public class Produtor implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id 
	@GeneratedValue
	private Integer id_produtor;
	 
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	@Size(min=11)
	private String cpf;
 
	
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	@Size(min=10)
	private String  email;
	
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	@Size(min=2)
	private String  nome;
	
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	@Size(min=6, message = "Minimo 6 caracteres!")
	private String senha;
	
	
	
	public Integer getId_produtor() {
		return id_produtor;
	}

	public void setId_produtor(Integer id_produtor) {
		this.id_produtor = id_produtor;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
