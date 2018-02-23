package ni.gob.minsa.sivin.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ni.gob.minsa.sivin.domain.Supervisor;

/**
 * Servicio para el objeto Supervisor
 * 
 * @author William Aviles
 * 
 **/

@Service("supervisorService")
@Transactional
public class SupervisorService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	

	/**
	 * Regresa todos los Supervisor
	 * 
	 * @return una lista de <code>Supervisor</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Supervisor> getSupervisores() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Supervisor");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa todos los Supervisor activos
	 * 
	 * @return una lista de <code>Supervisor</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Supervisor> getSupervisoresActivos() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Supervisor sup where sup.pasive ='0' order by sup.codigo");
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa un Supervisor
	 * @param ident Identificador de supervisor
	 * @return <code>Supervisor</code>
	 */
	public Supervisor getSupervisor(String ident) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Supervisor sup where sup.ident =:ident");
		query.setParameter("ident",ident);
		return  (Supervisor) query.uniqueResult();
	}
	
	/**
	 * Guarda un Supervisor
	 * @param supervisor El Supervisor a guardar
	 * 
	 */
	public void saveSupervisor(Supervisor supervisor) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(supervisor);
	}
	
	
}
