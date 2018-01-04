package ni.gob.minsa.sivin.domain.relationships;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * Objeto que representa la clave unica de relacion usuario/segmento
 * 
 * @author William Aviles
 **/
@Embeddable
public class UsuarioSegmentoId implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private String usuario;
	private String segmento;
	
	public UsuarioSegmentoId(){
		
	}
	
	

	public UsuarioSegmentoId(String usuario, String segmento) {
		super();
		this.usuario = usuario;
		this.segmento = segmento;
	}



	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UsuarioSegmentoId))
			return false;
		UsuarioSegmentoId castOther = (UsuarioSegmentoId) other;

		return this.getUsuario().equals(castOther.getUsuario())
				&& this.getSegmento().equals(castOther.getSegmento());
	}

	public int hashCode() {
		int result = 17;
		result = 37 * 3 * this.usuario.hashCode() * this.segmento.hashCode();
		return result;	
	}
	
	@Column(name = "usuario", nullable = false, length =50)
	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	@Column(name = "segmento", nullable = false, length =50)
	public String getSegmento() {
		return segmento;
	}


	public void setSegmento(String segmento) {
		this.segmento = segmento;
	}

	@Override
	public String toString(){
		return usuario;
	}

}