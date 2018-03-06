package ni.gob.minsa.sivin.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Servicio para el panel de control
 * 
 * @author William Aviles
 * 
 **/

@Service("dashboardService")
@Transactional
public class DashboardService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	
	/**
	 * Regresa datos de encuesta por fecha
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxFecha() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT (enc.fechaEntrevista) as fecha, COUNT(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta enc GROUP BY (enc.fechaEntrevista) order by (enc.fechaEntrevista)");
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa datos de encuesta por segmento
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxSegmento() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT seg.codigo, Count(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta as enc inner join enc.segmento as seg GROUP BY seg.codigo");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa datos de encuesta por municipio
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxMunicipio() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT seg.municipio, Count(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta as enc inner join enc.segmento as seg GROUP BY seg.municipio");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa datos de encuesta por departamento
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxDepartamento() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT seg.departamento, Count(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta as enc inner join enc.segmento as seg GROUP BY seg.departamento");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa datos de encuesta por region
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxRegion() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT seg.region, Count(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta as enc inner join enc.segmento as seg GROUP BY seg.region");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa datos de encuesta por procedencia
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxProcedencia() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("SELECT seg.grupo, Count(enc.ident) AS Total, "
				+ "SUM( CASE enc.pasive WHEN '1' THEN 1 ELSE 0 END ) AS Invalidas, "
				+ "SUM( CASE enc.pasive WHEN '0' THEN 1 ELSE 0 END ) AS Validas FROM Encuesta as enc inner join enc.segmento as seg GROUP BY seg.grupo");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa datos de encuesta por sexo jefe de familia
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getDatosEncuestaxSexo() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select enc.sexJefeFamilia, count(enc.ident) as total from Encuesta enc where enc.pasive='0' group by enc.sexJefeFamilia");
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Regresa numero de usuarios activos
	 * 
	 * @return Long
	 */
	public Long getNumUsuarios() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select count(user.username) from UserSistema user where user.enabled =:habilitado");
		query.setParameter("habilitado", true);
		// Retrieve all
		return  (Long) query.uniqueResult();
	}
	
	/**
	 * Regresa numero de usuarios con encuesta registrada
	 * 
	 * @return Long
	 */
	public Long getNumUsuariosEnc() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select count(distinct enc.recordUser) from Encuesta enc where enc.pasive ='0'");
		// Retrieve all
		return  (Long) query.uniqueResult();
	}
	
	
	/**
	 * Regresa numero de segmentos activos
	 * 
	 * @return Long
	 */
	public Long getNumSegmentos() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select count(seg.ident) from Segmento seg where seg.pasive ='0'");
		// Retrieve all
		return  (Long) query.uniqueResult();
	}
	
	/**
	 * Regresa numero de segmentos con encuesta registrada
	 * 
	 * @return Long
	 */
	public Long getNumSegmentosEnc() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select count(distinct enc.segmento) from Encuesta enc where enc.pasive ='0'");
		// Retrieve all
		return  (Long) query.uniqueResult();
	}
	
	
	/**
	 * Regresa numero de encuestas supervisadas
	 * 
	 * @return Long
	 */
	public Long getNumEncSup() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("select count(enc.ident) from Encuesta enc where enc.supervisor is not null");
		// Retrieve all
		return  (Long) query.uniqueResult();
	}
	
}
