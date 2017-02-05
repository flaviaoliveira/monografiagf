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
@IdClass(DespesaAdd_PropriedadeId.class)
public class DespesaAdd implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_despesaAdd;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
		
	
	@Column
	@NotNull
	private Date data;
	
	
	@Column
	private String tipo_despesa;
	
	
	@Column
	private float despesa;


	public Integer getId_despesaAdd() {
		return id_despesaAdd;
	}


	public void setId_despesaAdd(Integer id_despesaAdd) {
		this.id_despesaAdd = id_despesaAdd;
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


	public String getTipo_despesa() {
		return tipo_despesa;
	}


	public void setTipo_despesa(String tipo_despesa) {
		this.tipo_despesa = tipo_despesa;
	}


	public float getDespesa() {
		return despesa;
	}


	public void setDespesa(float despesa) {
		this.despesa = despesa;
	}
	
	
	
}

class DespesaAdd_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_despesaAdd;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((DespesaAdd)obj).getId_propriedade())
				&& id_despesaAdd.equals(((DespesaAdd)obj).getId_despesaAdd())) {
			return true;
		}
		return false;
	}
	
}


