package ni.gob.minsa.sivin.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ni.gob.minsa.sivin.domain.Encuestador;

/**
 * Servicio para el objeto Encuestador
 * 
 * @author William Aviles
 * 
 **/

@Service("encuestadorService")
@Transactional
public class EncuestadorService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	

	/**
	 * Regresa todos los Encuestador
	 * 
	 * @return una lista de <code>Encuestador</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Encuestador> getEncuestadores() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuestador");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa todos los Encuestador activos
	 * 
	 * @return una lista de <code>Encuestador</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Encuestador> getEncuestadoresActivos() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuestador enc where enc.pasive ='0' order by enc.codigo");
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa un Encuestador
	 * 
	 * @return <code>Encuestador</code>
	 */
	public Encuestador getEncuestador(String ident) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuestador enc where enc.ident =:ident");
		query.setParameter("ident",ident);
		return  (Encuestador) query.uniqueResult();
	}
	
	/**
	 * Guarda un Encuestador
	 * @param encuestador El Encuestador a guardar
	 * 
	 */
	public void saveEncuestador(Encuestador encuestador) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(encuestador);
	}
	
	
}
