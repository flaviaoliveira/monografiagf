package client.Tabelas;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.io.Serializable;

@Entity
@Table
@IdClass(RecomendacaoRecepadaId.class)
public class RecomendacaoRecepada implements Serializable{
	
    private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_Plantio;
	
	@Id
	@Column
	@NotNull
	private Integer id_propriedade;
	
	@Id
	@Column
	@NotNull
	private Date data;
	
	@Column
	private Integer m;
	
	@Column
	private Integer n;
	
	
	
	@Column
	private Integer n_cova;
	
	@Column
	private double p;
	
	@Column
	private double k;
	
	@Column
	private double mo;
	
	@Column
	private double sb;
	
	@Column
	private double ctc;
	
	@Column
	private double prnt;

	public Integer getId_Plantio() {
		return id_Plantio;
	}

	public void setId_Plantio(Integer id_Plantio) {
		this.id_Plantio = id_Plantio;
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

	public Integer getM() {
		return m;
	}

	public void setM(Integer m) {
		this.m = m;
	}

	public Integer getN() {
		return n;
	}

	public void setN(Integer n) {
		this.n = n;
	}
	public Integer getN_cova() {
		return n_cova;
	}

	public void setN_cova(Integer n_cova) {
		this.n_cova = n_cova;
	}

	public double getP() {
		return p;
	}

	public void setP(double p) {
		this.p = p;
	}

	public double getK() {
		return k;
	}

	public void setK(double k) {
		this.k = k;
	}

	public double getMo() {
		return mo;
	}

	public void setMo(double mo) {
		this.mo = mo;
	}

	public double getSb() {
		return sb;
	}

	public void setSb(double sb) {
		this.sb = sb;
	}

	public double getCtc() {
		return ctc;
	}

	public void setCtc(double ctc) {
		this.ctc = ctc;
	}

	public double getPrnt() {
		return prnt;
	}

	public void setPrnt(double prnt) {
		this.prnt = prnt;
	}

	
}
class RecomendacaoRecepadaId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private Integer id_Plantio;
	private Integer id_propriedade;
	private Date data;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_Plantio.equals(((RecomendacaoRecepada)obj).getId_Plantio())
				&& id_propriedade.equals(((RecomendacaoRecepada)obj).getId_propriedade())
				&& data.equals(((RecomendacaoRecepada)obj).getData())) {
			return true;
		}
		return false;
	}
	
}