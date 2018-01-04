package ni.gob.minsa.sivin.domain.relationships;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;

import ni.gob.minsa.sivin.domain.BaseMetaData;
import ni.gob.minsa.sivin.domain.Segmento;
import ni.gob.minsa.sivin.domain.audit.Auditable;
import ni.gob.minsa.sivin.users.model.UserSistema;

/**
 * Simple objeto de dominio que representa la relación de los segmentos para un usuario
 * 
 * @author William Aviles
 **/

@Entity
@Table(name = "usuarios_segmentos", catalog = "sivin")
public class UsuarioSegmento extends BaseMetaData implements Auditable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsuarioSegmentoId usuarioSegmentoId;
	private UserSistema user;
	private Segmento segment;
	
	public UsuarioSegmento() {
	}
	
	public UsuarioSegmento(UsuarioSegmentoId usuarioSegmentoId, Date recordDate, String recordUser) {
		super(recordDate, recordUser);
		this.usuarioSegmentoId = usuarioSegmentoId;
	}
	
	public UsuarioSegmento(UsuarioSegmentoId userCenterId, UserSistema user, Segmento segment
			, String recordUser, Date recordDate) {
		super(recordDate, recordUser);
		this.usuarioSegmentoId = userCenterId;
		this.user = user;
		this.segment = segment;
	}
	
	@Id
	public UsuarioSegmentoId getUsuarioSegmentoId() {
		return usuarioSegmentoId;
	}
	public void setUsuarioSegmentoId(UsuarioSegmentoId usuarioSegmentoId) {
		this.usuarioSegmentoId = usuarioSegmentoId;
	}
	
	@ManyToOne
	@JoinColumn(name="usuario", insertable = false, updatable = false)
	@ForeignKey(name = "US_USUARIOS_FK")
	public UserSistema getUser() {
		return user;
	}
	
	public void setUser(UserSistema user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="segmento", insertable = false, updatable = false)
	@ForeignKey(name = "US_SEGMENTOS_FK")
	public Segmento getSegment() {
		return segment;
	}
	public void setSegment(Segmento segment) {
		this.segment = segment;
	}
	
	@Override
	public String toString(){
		return segment.getCodigo();
	}
	@Override
	public boolean isFieldAuditable(String fieldname) {
		//Campos no auditables en la tabla
		if(fieldname.matches("recordDate")||fieldname.matches("recordUser")){
			return false;
		}		
		return true;
	}

}
