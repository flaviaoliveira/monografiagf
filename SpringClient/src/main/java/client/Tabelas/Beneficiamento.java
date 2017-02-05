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
@IdClass( Beneficiamento_PropriedadeId.class)
public class Beneficiamento implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_beneficiamento;
	
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
	private float despesa_func;
		
	
	@Column
	private float qnt_bags;
	
	
	@Column
	private float hrs_maquina;
	
	
	@Column
	private float despesa_maquina;
	
	@Column
	private String descricao;
	
	@Column
	private float despesa_outro;

	public Integer getId_beneficiamento() {
		return id_beneficiamento;
	}

	public void setId_beneficiamento(Integer id_beneficiamento) {
		this.id_beneficiamento = id_beneficiamento;
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

	public float getDespesa_func() {
		return despesa_func;
	}

	public void setDespesa_func(float despesa_func) {
		this.despesa_func = despesa_func;
	}

	public float getQnt_bags() {
		return qnt_bags;
	}

	public void setQnt_bags(float qnt_bags) {
		this.qnt_bags = qnt_bags;
	}

	public float getHrs_maquina() {
		return hrs_maquina;
	}

	public void setHrs_maquina(float hrs_maquina) {
		this.hrs_maquina = hrs_maquina;
	}

	public float getDespesa_maquina() {
		return despesa_maquina;
	}

	public void setDespesa_maquina(float despesa_maquina) {
		this.despesa_maquina = despesa_maquina;
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

class Beneficiamento_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_beneficiamento;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((Beneficiamento)obj).getId_propriedade())
				&& id_beneficiamento.equals(((Beneficiamento)obj).getId_beneficiamento())) {
			return true;
		}
		return false;
	}
	
}


