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
@IdClass(Praga_PropriedadeId.class)
public class PragasDoencas implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private Integer id_pragas;
	
	@Id
	@Column
	private Integer id_propriedade;
	
	@Column
	@NotNull
	private Date data_inicio;
	
	@Column
	@NotNull
	private Date data_fim;
	
	public Integer getId_pragas() {
		return id_pragas;
	}
	public void setId_pragas(Integer id_pragas) {
		this.id_pragas = id_pragas;
	}
	public Integer getId_propriedade() {
		return id_propriedade;
	}
	public void setId_propriedade(Integer id_propriedade) {
		this.id_propriedade = id_propriedade;
	}
	public Date getData_inicio() {
		return data_inicio;
	}
	public void setData_inicio(Date data_inicio) {
		this.data_inicio = data_inicio;
	}
	public Date getData_fim() {
		return data_fim;
	}
	public void setData_fim(Date data_fim) {
		this.data_fim = data_fim;
	}
	

}
class Praga_PropriedadeId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private Integer id_pragas;
	private Integer id_propriedade;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((PragasDoencas)obj).getId_propriedade())
				&& id_pragas.equals(((PragasDoencas)obj).getId_pragas())) {
			return true;
		}
		return false;
	}
	
}


