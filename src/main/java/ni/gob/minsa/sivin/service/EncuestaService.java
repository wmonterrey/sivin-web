package ni.gob.minsa.sivin.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ni.gob.minsa.sivin.domain.Encuesta;

/**
 * Servicio para el objeto Encuesta
 * 
 * @author William Aviles
 * 
 **/

@Service("encuestaService")
@Transactional
public class EncuestaService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	
	/**
	 * Regresa todas las encuestas
	 * 
	 * @return una lista de <code>Encuesta</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Encuesta> getEncuestas() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuesta");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa todos las encuestas activas del usuario
	 * 
	 * @return una lista de <code>Encuesta</code>(s)
	 */

	@SuppressWarnings("unchecked")
	public List<Encuesta> getEncuestasUsuario(String username) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuesta enc " +
				"where (enc.pasive ='0' and enc.segmento.ident in (Select useg.usuarioSegmentoId.segmento from UsuarioSegmento useg where useg.usuarioSegmentoId.usuario =:username and useg.pasive ='0'))");
		query.setParameter("username",username);
		// Retrieve all
		return  query.list();
	}

	/**
	 * Guarda una encuesta
	 * 
	 * 
	 */
	public void saveEncuesta(Encuesta encuesta) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(encuesta);
	}
	
	
}
