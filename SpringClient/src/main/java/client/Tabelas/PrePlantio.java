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
@IdClass(PrePlantio_PropriedadeId.class)
public class PrePlantio implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_plantio;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
		
	
	@Column
	@NotNull
	private Date data;
	
	
	@Column
	private float area_p;
	
	@Id
	@Column
	private Integer qnt_func;
	
	
	@Column
	private float despesa_func;
	
	@Id
	@Column
	private Integer qnt_muda;
	
	
	@Column
	private float despesa_muda;
	
	
	@Column
	private String tipo_muda;
	
	
	public Integer getId_plantio() {
		return id_plantio;
	}

	public void setId_plantio(Integer id_plantio) {
		this.id_plantio = id_plantio;
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

	public float getArea_p() {
		return area_p;
	}

	public void setArea_p(float area_p) {
		this.area_p = area_p;
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

	public Integer getQnt_muda() {
		return qnt_muda;
	}

	public void setQnt_muda(Integer qnt_muda) {
		this.qnt_muda = qnt_muda;
	}

	public float getDespesa_muda() {
		return despesa_muda;
	}

	public void setDespesa_muda(float despesa_muda) {
		this.despesa_muda = despesa_muda;
	}

	public String getTipo_muda() {
		return tipo_muda;
	}

	public void setTipo_muda(String tipo_muda) {
		this.tipo_muda = tipo_muda;
	}
	
}

class PrePlantio_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_plantio;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((Plantio)obj).getId_propriedade())
				&& id_plantio.equals(((Plantio)obj).getId_plantio())) {
			return true;
		}
		return false;
	}
	
}


