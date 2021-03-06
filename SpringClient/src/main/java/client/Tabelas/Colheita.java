package client.Tabelas;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
@IdClass(Colheita_PropriedadeId.class)
public class Colheita implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_colheita;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
			
	@Column
	@NotNull
	private Date data;
		
	@Column
	private Integer qnt_func;
		
	@Column
	private float qnt_sacas;
	
	@Column
	private float despesa_saca;
	
	@Column
	private Integer n_viages;
	
	@Column
	private float despesa_viagens;
	
	@Column
	private String descricao;
	
	@Column
	private float despesa_outro;
	

	public Integer getId_colheita() {
		return id_colheita;
	}

	public void setId_colheita(Integer id_colheita) {
		this.id_colheita = id_colheita;
	}

	public Integer getId_propriedade() {
		return id_propriedade;
	}

	public void setId_propriedade(Integer id_propriedade) {
		this.id_propriedade = id_propriedade;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Integer getQnt_func() {
		return qnt_func;
	}

	public void setQnt_func(Integer qnt_func) {
		this.qnt_func = qnt_func;
	}

	public float getQnt_sacas() {
		return qnt_sacas;
	}

	public void setQnt_sacas(float qnt_sacas) {
		this.qnt_sacas = qnt_sacas;
	}

	public float getDespesa_saca() {
		return despesa_saca;
	}

	public void setDespesa_saca(float despesa_saca) {
		this.despesa_saca = despesa_saca;
	}

	public Integer getN_viages() {
		return n_viages;
	}

	public void setN_viages(Integer n_viages) {
		this.n_viages = n_viages;
	}

	public float getDespesa_viagens() {
		return despesa_viagens;
	}

	public void setDespesa_viagens(float despesa_viagens) {
		this.despesa_viagens = despesa_viagens;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public float getDespesa_outro() {
		return despesa_outro;
	}

	public void setDespesa_outro(float despesa_outro) {
		this.despesa_outro = despesa_outro;
	}
	
    
	
}

class Colheita_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_colheita;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((Colheita)obj).getId_propriedade())
				&& id_colheita.equals(((Colheita)obj).getId_colheita())) {
			return true;
		}
		return false;
	}
	
}
