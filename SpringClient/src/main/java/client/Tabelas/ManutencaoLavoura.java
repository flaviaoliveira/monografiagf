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
@IdClass(ManutencaoLavoura_PropriedadeId.class)
public class ManutencaoLavoura implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_manutencaolavoura;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
		
	
	@Column
	@NotNull
	private Date data;
	
	@Column
	@NotNull
	private String tipo_manutencao;
	

	@Column
	@NotNull
	private Integer qnt_func;
	
	
	@Column
	@NotNull
	private float despesa_func;


	public Integer getId_manutencaolavoura() {
		return id_manutencaolavoura;
	}


    
	public String getTipo_manutencao() {
		return tipo_manutencao;
	}



	public void setTipo_manutencao(String tipo_manutencao) {
		this.tipo_manutencao = tipo_manutencao;
	}


	public void setId_manutencaolavoura(Integer id_manutencaolavoura) {
		this.id_manutencaolavoura = id_manutencaolavoura;
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
	
}

class ManutencaoLavoura_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_manutencaolavoura;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((ManutencaoLavoura)obj).getId_propriedade())
				&& id_manutencaolavoura.equals(((ManutencaoLavoura)obj).getId_manutencaolavoura())) {
			return true;
		}
		return false;
	}
	
}


