package ni.gob.minsa.sivin.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "encuestadesc", catalog = "sivin")
public class EncuestaHelper{
	/**
	 * 
	 */
	private String campo;
	private String desc;
	private String seccion;
	private Integer orden;
	private String cat;
	private String catKey;
	private String catOpciones;
	private String valor;
	
	
	public EncuestaHelper() {
		super();
	}


	@Id
    @Column(name = "campo", nullable = false, length = 50)
	public String getCampo() {
		return campo;
	}
	public void setCampo(String campo) {
		this.campo = campo;
	}
	
	@Column(name = "nombre", nullable = false, length = 255)	
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Column(name = "seccion", nullable = false, length = 50)
	public String getSeccion() {
		return seccion;
	}


	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}
	
	
	@Column(name = "orden", nullable = false)
	public Integer getOrden() {
		return orden;
	}


	public void setOrden(Integer orden) {
		this.orden = orden;
	}

	
	@Column(name = "iscat", nullable = false, length = 1)
	public String getCat() {
		return cat;
	}


	public void setCat(String cat) {
		this.cat = cat;
	}


	@Column(name = "catalogo", nullable = true, length = 50)
	public String getCatKey() {
		return catKey;
	}


	public void setCatKey(String catKey) {
		this.catKey = catKey;
	}
	
	
	@Column(name = "desccatalogo", nullable = true, length = 255)
	public String getCatOpciones() {
		return catOpciones;
	}


	public void setCatOpciones(String catOpciones) {
		this.catOpciones = catOpciones;
	}

	@Column(name = "valor", nullable = true, length = 255)
	public String getValor() {
		return valor;
	}


	public void setValor(String valor) {
		this.valor = valor;
	}


	@Override
	public String toString(){
		return this.getDesc();
	}
	

}
