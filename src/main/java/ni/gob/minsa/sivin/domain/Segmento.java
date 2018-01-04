package ni.gob.minsa.sivin.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import ni.gob.minsa.sivin.domain.audit.Auditable;


/**
 * Segmento es la clase que representa el segmento censal donde se realiza una encuesta.
 * 
 * Segmento incluye información básica como:
 * 
 * <ul>
 * <li>Departamento
 * <li>Municipio
 * <li>Barrio/Comunidad
 * <li>Comunidad SIS
 * </ul>
 * <p>
 * Comunidad SIS es el enlace al esquema General dentro del SIS MINSA.
 * 
 *  
 * @author      William Avilés
 * @version     1.0
 * @since       1.0
 */
@Entity
@Table(name = "segmentos", catalog = "sivin", uniqueConstraints={@UniqueConstraint(columnNames = {"codigo","pasivo"})})
public class Segmento extends BaseMetaData implements Auditable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ident;
	private String codigo;
	private String departamento;
	private String municipio;
	private String comunidad;
	private String region;
	private String procedencia;
	private String codigoSis;
	
	
	public Segmento() {
		super();
	}


	public Segmento(String ident, String codigo, String departamento, String municipio, String comunidad, String region,
			String tipo, String codigoSis) {
		super();
		this.ident = ident;
		this.codigo = codigo;
		this.departamento = departamento;
		this.municipio = municipio;
		this.comunidad = comunidad;
		this.region = region;
		this.procedencia = tipo;
		this.codigoSis = codigoSis;
	}


	@Id
    @Column(name = "identificador", nullable = false, length = 50)
	public String getIdent() {
		return ident;
	}


	public void setIdent(String ident) {
		this.ident = ident;
	}

	@Column(name = "codigo", nullable = false, length = 5)
	public String getCodigo() {
		return codigo;
	}


	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Column(name = "departamento", nullable = false, length = 50)
	public String getDepartamento() {
		return departamento;
	}


	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	@Column(name = "municipio", nullable = false, length = 50)
	public String getMunicipio() {
		return municipio;
	}


	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	@Column(name = "comunidad", nullable = false, length = 100)
	public String getComunidad() {
		return comunidad;
	}


	public void setComunidad(String comunidad) {
		this.comunidad = comunidad;
	}

	@Column(name = "region", nullable = false, length = 50)
	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}

	@Column(name = "procedencia", nullable = false, length = 50)
	public String getProcedencia() {
		return procedencia;
	}


	public void setProcedencia(String procedencia) {
		this.procedencia = procedencia;
	}

	@Column(name = "codigosis", nullable = true, length = 50)
	public String getCodigoSis() {
		return codigoSis;
	}


	public void setCodigoSis(String codigoSis) {
		this.codigoSis = codigoSis;
	}


	@Override
	public boolean isFieldAuditable(String fieldname) {
		return true;
	}
	
	@Override
	public String toString(){
		return this.getComunidad()+"-"+this.getCodigo();
	}
	
	@Override
	public boolean equals(Object other) {
		
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof Segmento))
			return false;
		
		Segmento castOther = (Segmento) other;

		return (this.getIdent().equals(castOther.getIdent()));
	}
	

}
