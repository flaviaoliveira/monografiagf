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
@IdClass(PosColheita_PropriedadeId.class)
public class PosColheita implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_poscolheita;
	
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
	private Integer qnt_cafe;
	
	@Column
	private float hrs_secador;
	
	@Column
	private float despesa_secador;
	
	@Column
	private String descricao;
	
	@Column
	private float despesa_outro;

	

	public Integer getId_poscolheita() {
		return id_poscolheita;
	}

	public void setId_poscolheita(Integer id_poscolheita) {
		this.id_poscolheita = id_poscolheita;
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

	public Integer getQnt_cafe() {
		return qnt_cafe;
	}

	public void setQnt_cafe(Integer qnt_cafe) {
		this.qnt_cafe = qnt_cafe;
	}

	public float getHrs_secador() {
		return hrs_secador;
	}

	public void setHrs_secador(float hrs_secador) {
		this.hrs_secador = hrs_secador;
	}

	public float getDespesa_secador() {
		return despesa_secador;
	}

	public void setDespesa_secador(float despesa_secador) {
		this.despesa_secador = despesa_secador;
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

class PosColheita_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_poscolheita;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((PosColheita)obj).getId_propriedade())
				&& id_poscolheita.equals(((PosColheita)obj).getId_poscolheita())) {
			return true;
		}
		return false;
	}
	
}



