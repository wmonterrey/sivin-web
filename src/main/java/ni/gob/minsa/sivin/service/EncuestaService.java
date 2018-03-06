package ni.gob.minsa.sivin.service;

import java.sql.Timestamp;
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
	 * Regresa una encuesta
	 * @param ident Identificador
	 * @return una <code>Encuesta</code>
	 */
	public Encuesta getEncuesta(String ident) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuesta enc where enc.ident =:ident");
		query.setParameter("ident",ident);
		// Retrieve all
		return  (Encuesta) query.uniqueResult();
	}
	
	/**
	 * Regresa todos las encuestas activas del usuario
	 * @param username Nombre del usuario. 
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
	 * Regresa todas las encuestas con codigo duplicado
	 * 
	 * @return una lista de <code>Encuesta</code>(s)
	 */
	@SuppressWarnings("unchecked")
	public List<Encuesta> getEncuestasCodigoDuplicado() {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Encuesta enc where (enc.codigo in (Select enc2.codigo from Encuesta enc2 where enc.pasive ='0' group by (enc2.codigo) Having count(enc2.codigo)>1 ))");
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa todos las encuestas activas dependiendo del filtro
	 * @param codigo Codigo de la encuesta.
	 * @param nombre Nombre del jefe de familia. 
	 * @param desde Filtro de fecha 
	 * @param hasta Filtro de fecha hasta
	 * @param zonas zona a filtrar
	 * @param zonafiltrar nombre de la zona
	 * @return una lista de <code>Encuesta</code>(s)
	 */

	@SuppressWarnings("unchecked")
	public List<Encuesta> getEncuestasSupervisar(String codigo, String nombre,
			Long desde, Long hasta, String zonas, String zonafiltrar, boolean checkSinSupervisar) {
		//Set the SQL Query initially
		String sqlQuery = "from Encuesta enc where 1=1";
		// if not null set time parameters
		if(!(desde==null)) {
			sqlQuery = sqlQuery + " and enc.fechaEntrevista between :fechaInicio and :fechaFinal";
		}
		if (!codigo.matches("")) {
			sqlQuery = sqlQuery + " and enc.codigo =:codigo";
		}
		if (checkSinSupervisar) {
			sqlQuery = sqlQuery + " and enc.supervisor is null";
		}
		if (!nombre.matches("")) {
			sqlQuery = sqlQuery + " and lower(enc.jefeFamilia) like:nombre";
		}
		if(zonas.equals("ZON_REP_1")) {
			sqlQuery = sqlQuery + " and enc.segmento.grupo=:grupo";
		}
		else if(zonas.equals("ZON_REP_2")) {
			sqlQuery = sqlQuery + " and enc.segmento.region=:region";
		}
		else if(zonas.equals("ZON_REP_3")) {
			sqlQuery = sqlQuery + " and enc.segmento.departamento=:departamento";
		}
		else if(zonas.equals("ZON_REP_4")) {
			sqlQuery = sqlQuery + " and enc.segmento.municipio=:municipio";
		}
		else if(zonas.equals("ZON_REP_5")) {
			sqlQuery = sqlQuery + " and enc.segmento.ident=:segmento";
		}
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery(sqlQuery);
		if(!(desde==null)) {
			Timestamp timeStampInicio = new Timestamp(desde);
			Timestamp timeStampFinal = new Timestamp(hasta);
			query.setTimestamp("fechaInicio", timeStampInicio);
			query.setTimestamp("fechaFinal", timeStampFinal);
		}
		if (!codigo.matches("")) {
			query.setParameter("codigo", codigo);
		}
		if (!nombre.matches("")) {
			query.setParameter("nombre", "%"+nombre.toLowerCase()+"%");
		}
		if(zonas.equals("ZON_REP_1")) {
			query.setParameter("grupo", zonafiltrar);
		}
		else if(zonas.equals("ZON_REP_2")) {
			query.setParameter("region", zonafiltrar);
		}
		else if(zonas.equals("ZON_REP_3")) {
			query.setParameter("departamento", zonafiltrar);
		}
		else if(zonas.equals("ZON_REP_4")) {
			query.setParameter("municipio", zonafiltrar);
		}
		else if(zonas.equals("ZON_REP_5")) {
			query.setParameter("segmento", zonafiltrar);
		}
		// Retrieve all
		return  query.list();
	}

	/**
	 * Guarda una encuesta
	 * @param encuesta La encuesta a guardar
	 * 
	 */
	public void saveEncuesta(Encuesta encuesta) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(encuesta);
	}
	
	
}
