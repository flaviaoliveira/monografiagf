package client.Tabelas;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;


@Entity
@Table
@IdClass(Propriedade_ProdutorId.class)
public class Propriedade_Produtor implements Serializable{
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column
	private Integer id_propriedade;
	@Id
	@Column
	private Integer id_produtor;
	
	public Integer getId_propriedade() {
		return id_propriedade;
	}
	public void setId_propriedade(Integer id_propriedade) {
		this.id_propriedade = id_propriedade;
	}
	public Integer getId_produtor() {
		return id_produtor;
	}
	public void setId_produtor(Integer id_proprietario) {
		this.id_produtor = id_proprietario;
	}
	
	
}

class Propriedade_ProdutorId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private Integer id_propriedade;
	private Integer id_produtor;
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (id_propriedade.equals(((Propriedade_Produtor)obj).getId_propriedade())
				&& id_produtor.equals(((Propriedade_Produtor)obj).getId_produtor())) {
			return true;
		}
		return false;
	}
	
}

