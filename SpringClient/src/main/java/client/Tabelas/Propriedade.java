package client.Tabelas;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
@Embeddable
public class Propriedade implements Serializable{
  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue
	private int id_propriedade;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String nome;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private double lavoura_tamanho;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private double propriedade_tamanho;
	
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String estado;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String cidade;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String municipio;
	
	@Column
	private double altitude;
		
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String tipo_cafe;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private String variedade;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private Integer numero_talhao;
	
	@Column
	@NotNull(message = "Campo Obrigatório!")
	private int covas_numero;
	
	
	
	public int getId_propriedade() {
		return id_propriedade;
	}
	public void setId_propriedade(int id_propriedade) {
		this.id_propriedade = id_propriedade;
	}
	public String getVariedade() {
		return variedade;
	}
	public void setVariedade(String variedade) {
		this.variedade = variedade;
	}
	public Integer getNumero_talhao() {
		return numero_talhao;
	}
	public void setNumero_talhao(Integer numero_talhao) {
		this.numero_talhao = numero_talhao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getLavoura_tamanho() {
		return lavoura_tamanho;
	}
	public void setLavoura_tamanho(double lavoura_tamanho) {
		this.lavoura_tamanho = lavoura_tamanho;
	}
	public double getPropriedade_tamanho() {
		return propriedade_tamanho;
	}
	public void setPropriedade_tamanho(double propriedade_tamanho) {
		this.propriedade_tamanho = propriedade_tamanho;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}
	public double getAltitude() {
		return altitude;
	}
	public void setAltitude(double altitude) {
		this.altitude = altitude;
	}
	public int getCovas_numero() {
		return covas_numero;
	}
	public void setCovas_numero(int covas_numero) {
		this.covas_numero = covas_numero;
	}
	public String getTipo_cafe() {
		return tipo_cafe;
	}
	public void setTipo_cafe(String tipo_cafe) {
		this.tipo_cafe = tipo_cafe;
	}
	
	
}
