package ni.gob.minsa.sivin.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ni.gob.minsa.sivin.domain.Segmento;
import ni.gob.minsa.sivin.domain.relationships.UsuarioSegmento;

/**
 * Servicio para el objeto Segmento
 * 
 * @author William Aviles
 * 
 **/

@Service("segmentoService")
@Transactional
public class SegmentoService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	
	/**
	 * Regresa todos los segmentos activos
	 * 
	 * @return una lista de <code>Segmento</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Segmento> getSegmentos() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Segmento seg where seg.pasive ='0' order by seg.region, seg.departamento, seg.municipio, seg.comunidad, seg.codigo");
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa un segmento
	 * 
	 * @return <code>Segmento</code>
	 */
	public Segmento getSegmento(String segmento) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Segmento seg where seg.ident =:segmento");
		query.setParameter("segmento",segmento);
		return  (Segmento) query.uniqueResult();
	}
	
	
	/**
	 * Regresa todos los segmentos activos de un usuario
	 * @param username El usuario de los segmentos
	 * @return una lista de <code>UsuarioSegmento</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<UsuarioSegmento> getUsuarioSegmentos(String username) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM UsuarioSegmento useg where useg.usuarioSegmentoId.usuario =:username and useg.pasive ='0' ");
		query.setParameter("username",username);
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa todos los segmentos que no tiene el usuario
	 * @param username Nombre del usuario. 
	 * @return una lista de <code>Segmento</code>(s)
	 */

	@SuppressWarnings("unchecked")
	public List<Segmento> getSegmentosNoTieneUsuario(String username) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Segmento seg  where seg.pasive ='0' and seg.ident not in (Select useg.usuarioSegmentoId.segmento from UsuarioSegmento useg where useg.usuarioSegmentoId.usuario =:username)");
		query.setParameter("username",username);
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa un segmentos de un usuario
	 * @param username El usuario
	 * @param segmento El segmento
	 * @return <code>UsuarioSegmento</code>
	 */
	public UsuarioSegmento getUsuarioSegmento(String username, String segmento) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM UsuarioSegmento useg where useg.usuarioSegmentoId.usuario =:username and useg.usuarioSegmentoId.segmento =:segmento ");
		query.setParameter("username",username);
		query.setParameter("segmento",segmento);
		// Retrieve all
		return  (UsuarioSegmento) query.uniqueResult();
	}
	
	
	/**
	 * Regresa todos los segmentos  de un usuario
	 * @param username El usuario de los segmentos
	 * @return una lista de <code>UsuarioSegmento</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<UsuarioSegmento> getUsuarioSegmentosTodos(String username) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM UsuarioSegmento useg where useg.usuarioSegmentoId.usuario =:username");
		query.setParameter("username",username);
		// Retrieve all
		return  query.list();
	}

	/**
	 * Guarda un segmento
	 * @param segmento El segmento a guardar
	 * 
	 */
	public void saveSegmento(Segmento segmento) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(segmento);
	}
	
	/**
	 * Guarda un UsuarioSegmento
	 * @param segmento El UsuarioSegmento a guardar
	 * 
	 */
	public void saveUsuarioSegmento(UsuarioSegmento us) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(us);
	}
	
	
}
