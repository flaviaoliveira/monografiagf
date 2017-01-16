package client.Tabelas;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;



@Entity
@Table
public class ManutencaoEquipamento implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id_manutencaoequipamento;
	
	
	@Column
	@NotNull
	private Date data;
	
	
	@Column
	private String equipamento ;
	
	
	@Column
	private String acao;
	
	
	@Column
	private float despesa;

	public Integer getId_manutencaoequipamento() {
		return id_manutencaoequipamento;
	}

	public void setId_manutencaoequipamento(Integer id_manutencaoequipamento) {
		this.id_manutencaoequipamento = id_manutencaoequipamento;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getEquipamento() {
		return equipamento;
	}

	public void setEquipamento(String equipamento) {
		this.equipamento = equipamento;
	}

	public String getAcao() {
		return acao;
	}

	public void setAcao(String acao) {
		this.acao = acao;
	}

	public float getDespesa() {
		return despesa;
	}

	public void setDespesa(float despesa) {
		this.despesa = despesa;
	}
	
}
