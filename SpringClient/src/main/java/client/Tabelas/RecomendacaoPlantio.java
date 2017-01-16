package client.Tabelas;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import java.io.Serializable;

@Entity
@Table
@IdClass(RecomendacaoPlantioId.class)
public class RecomendacaoPlantio implements Serializable{
	
    private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_Plantio;
	
	@Id
	@Column
	private Integer id_lavoura;
	
	@Id
	@Column
	private Date data;
	
	@Column
	private Integer dimensao1;
	
	@Column
	private Integer dimensao2;
	
	@Column
	private Integer dimensao3;
	
	@Column
	private double P;
	
	@Column
	private double K;
	
	@Column
	private double MO;
	
	@Column
	private double SB;
	
	@Column
	private double CTC;
	
	@Column
	private double PRNT;

	public Integer getId_Plantio() {
		return id_Plantio;
	}

	public void setId_Plantio(Integer id_Plantio) {
		this.id_Plantio = id_Plantio;
	}

	public Integer getId_lavoura() {
		return id_lavoura;
	}

	public void setId_lavoura(Integer id_lavoura) {
		this.id_lavoura = id_lavoura;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Integer getDimensao1() {
		return dimensao1;
	}

	public void setDimensao1(Integer dimensao1) {
		this.dimensao1 = dimensao1;
	}

	public Integer getDimensao2() {
		return dimensao2;
	}

	public void setDimensao2(Integer dimensao2) {
		this.dimensao2 = dimensao2;
	}

	public Integer getDimensao3() {
		return dimensao3;
	}

	public void setDimensao3(Integer dimensao3) {
		this.dimensao3 = dimensao3;
	}

	public double getP() {
		return P;
	}

	public void setP(double p) {
		P = p;
	}

	public double getK() {
		return K;
	}

	public void setK(double k) {
		K = k;
	}

	public double getMO() {
		return MO;
	}

	public void setMO(double mO) {
		MO = mO;
	}

	public double getSB() {
		return SB;
	}

	public void setSB(double sB) {
		SB = sB;
	}

	public double getCTC() {
		return CTC;
	}

	public void setCTC(double cTC) {
		CTC = cTC;
	}

	public double getPRNT() {
		return PRNT;
	}

	public void setPRNT(double pRNT) {
		PRNT = pRNT;
	}
	
}
class RecomendacaoPlantioId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private Integer id_Plantio;
	private Integer id_lavoura;
	private Date data;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_Plantio.equals(((RecomendacaoPlantio)obj).getId_Plantio())
				&& id_lavoura.equals(((RecomendacaoPlantio)obj).getId_lavoura())
				&& data.equals(((RecomendacaoPlantio)obj).getData())) {
			return true;
		}
		return false;
	}
	
}