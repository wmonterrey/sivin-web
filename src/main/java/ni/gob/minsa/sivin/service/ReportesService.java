package ni.gob.minsa.sivin.service;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Servicio para el panel de control de reportes
 * 
 * @author William Aviles
 * 
 **/

@Service("reportesService")
@Transactional
public class ReportesService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	
	/**
	 * Regresa datos de hogar
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> reportesHogar(String reporte,Long date1, Long date2, String zonas, String zonafiltrar) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		Timestamp timeStampInicio = new Timestamp(date1);
		Timestamp timeStampFinal = new Timestamp(date2);
		// Create a Hibernate query (HQL)
		Query query = null;
		if (reporte.equals("REP_HOG_1")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.sexJefeFamilia, count(enc.sexJefeFamilia) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.sexJefeFamilia");
				query.setParameter("ident", zonafiltrar);
			}
		}
		else if (reporte.equals("REP_HOG_2")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.numPersonas, count(enc.numPersonas) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.numPersonas");
				query.setParameter("ident", zonafiltrar);
			}
		}
		query.setTimestamp("fechaInicio", timeStampInicio);
		query.setTimestamp("fechaFinal", timeStampFinal);
		query.setParameter("pasivo", '0');
		// Retrieve all
		return  query.list();
	}
	
	
	/**
	 * Regresa datos de vivienda
	 * 
	 * @return lista de objetos
	 */
	@SuppressWarnings("unchecked")
	public List<Object> reportesVivienda(String reporte,Long date1, Long date2, String zonas, String zonafiltrar) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		Timestamp timeStampInicio = new Timestamp(date1);
		Timestamp timeStampFinal = new Timestamp(date2);
		// Create a Hibernate query (HQL)
		Query query = null;
		if (reporte.equals("REP_VIV_1")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.agua, count(enc.agua) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.agua");
				query.setParameter("ident", zonafiltrar);
			}
		}
		else if (reporte.equals("REP_VIV_2")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.cuartos, count(enc.cuartos) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.cuartos");
				query.setParameter("ident", zonafiltrar);
			}
		}
		else if (reporte.equals("REP_VIV_3")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.lugNecesidades, count(enc.lugNecesidades) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.lugNecesidades");
				query.setParameter("ident", zonafiltrar);
			}
		}
		else if (reporte.equals("REP_VIV_4")){
			if(zonas.equals("ZON_REP_0")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
			}
			if(zonas.equals("ZON_REP_1")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.procedencia=:procedencia and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
				query.setParameter("procedencia", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_2")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.region=:region and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
				query.setParameter("region", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_3")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.departamento=:departamento and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
				query.setParameter("departamento", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_4")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.municipio=:municipio and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
				query.setParameter("municipio", zonafiltrar);
			}
			if(zonas.equals("ZON_REP_5")) {
				query = session.createQuery("select enc.usaCocinar, count(enc.usaCocinar) "
						+ "from Encuesta enc where enc.pasive =:pasivo and enc.segmento.ident=:ident and enc.fechaEntrevista between :fechaInicio and :fechaFinal group by enc.usaCocinar");
				query.setParameter("ident", zonafiltrar);
			}
		}
		query.setTimestamp("fechaInicio", timeStampInicio);
		query.setTimestamp("fechaFinal", timeStampFinal);
		query.setParameter("pasivo", '0');
		// Retrieve all
		return  query.list();
	}
	
	
}
