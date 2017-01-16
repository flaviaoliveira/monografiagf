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
@IdClass(Insumos_PropriedadeId.class)
public class Insumos implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_insumos;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
		
	
	@Column
	@NotNull
	private Date data;
	
	
	@Column
	private float area;
	
	
	@Column
	private Integer qnt_func;
	
	
	@Column
	private float despesa_func;
	
	
	@Column
	private Integer qnt_insumos;
	
	
	@Column
	private float despesa_insumos;
	
	
	@Column
	private String tipo_insumos;

	public Integer getId_insumos() {
		return id_insumos;
	}

	public void setId_insumos(Integer id_insumos) {
		this.id_insumos = id_insumos;
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

	public float getArea() {
		return area;
	}

	public void setArea(float area) {
		this.area = area;
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

	public Integer getQnt_insumos() {
		return qnt_insumos;
	}

	public void setQnt_insumos(Integer qnt_insumos) {
		this.qnt_insumos = qnt_insumos;
	}

	public float getDespesa_insumos() {
		return despesa_insumos;
	}

	public void setDespesa_insumos(float despesa_insumos) {
		this.despesa_insumos = despesa_insumos;
	}

	public String getTipo_insumos() {
		return tipo_insumos;
	}

	public void setTipo_insumos(String tipo_insumos) {
		this.tipo_insumos = tipo_insumos;
	}
	
	
}

class Insumos_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_insumos;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((Insumos)obj).getId_propriedade())
				&& id_insumos.equals(((Insumos)obj).getId_insumos())) {
			return true;
		}
		return false;
	}
	
}


