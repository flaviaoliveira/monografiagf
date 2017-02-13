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
	private Integer id_preplantio;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
		
	@Column
	@NotNull
	private Date data;
	
	@Column
	private double area_t;
	
	@Column
	private int n_covas;
	
	@Column
	private int  qnt_func;
	
	@Column
	private double despesa_func;
	
	@Column
	private String tipo_adubo;
	
	@Column
	private double qnt_adubo;
		
	@Column
	private double despesa_adubo;
	
	@Column
	private String tipo_calcario;
	
	@Column
	private double qnt_calcario;
		
	@Column
	private double despesa_calcario;
	
	@Column
	private String tipo_herbicida;
	
	@Column
	private double qnt_herbicida;
		
	@Column
	private double despesa_herbicida;
	
	@Column
	private String descricao;
	
	@Column
	private double despesa_outro;

	public Integer getId_preplantio() {
		return id_preplantio;
	}

	public void setId_preplantio(Integer id_preplantio) {
		this.id_preplantio = id_preplantio;
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

	public double getArea_t() {
		return area_t;
	}

	public void setArea_t(float area_t) {
		this.area_t = area_t;
	}

	public Integer getN_covas() {
		return n_covas;
	}

	public void setN_covas(Integer n_covas) {
		this.n_covas = n_covas;
	}

	public Integer getQnt_func() {
		return qnt_func;
	}

	public void setQnt_func(Integer qnt_func) {
		this.qnt_func = qnt_func;
	}

	public double getDespesa_func() {
		return despesa_func;
	}

	public void setDespesa_func(float despesa_func) {
		this.despesa_func = despesa_func;
	}

	public String getTipo_adubo() {
		return tipo_adubo;
	}

	public void setTipo_adubo(String tipo_adubo) {
		this.tipo_adubo = tipo_adubo;
	}

	public double getQnt_adubo() {
		return qnt_adubo;
	}

	public void setQnt_adubo(float qnt_adubo) {
		this.qnt_adubo = qnt_adubo;
	}

	public double getDespesa_adubo() {
		return despesa_adubo;
	}

	public void setDespesa_adubo(float despesa_adubo) {
		this.despesa_adubo = despesa_adubo;
	}

	public String getTipo_calcario() {
		return tipo_calcario;
	}

	public void setTipo_calcario(String tipo_calcario) {
		this.tipo_calcario = tipo_calcario;
	}

	public double getQnt_calcario() {
		return qnt_calcario;
	}

	public void setQnt_calcario(float qnt_calcario) {
		this.qnt_calcario = qnt_calcario;
	}

	public double getDespesa_calcario() {
		return despesa_calcario;
	}

	public void setDespesa_calcario(float despesa_calcario) {
		this.despesa_calcario = despesa_calcario;
	}

	public String getTipo_herbicida() {
		return tipo_herbicida;
	}

	public void setTipo_herbicida(String tipo_herbicida) {
		this.tipo_herbicida = tipo_herbicida;
	}

	public double getQnt_herbicida() {
		return qnt_herbicida;
	}

	public void setQnt_herbicida(float qnt_herbicida) {
		this.qnt_herbicida = qnt_herbicida;
	}

	public double getDespesa_herbicida() {
		return despesa_herbicida;
	}

	public void setDespesa_herbicida(float despesa_herbicida) {
		this.despesa_herbicida = despesa_herbicida;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getDespesa_outro() {
		return despesa_outro;
	}

	public void setDespesa_outro(float despesa_outro) {
		this.despesa_outro = despesa_outro;
	}
		
	
}

class PrePlantio_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_preplantio;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((PrePlantio)obj).getId_propriedade())
				&& id_preplantio.equals(((PrePlantio)obj).getId_preplantio())) {
			return true;
		}
		return false;
	}
	
}


