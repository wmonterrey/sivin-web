package ni.gob.minsa.sivin.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.impl.SessionImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * Servicio para el panel de control de exportacion
 * 
 * @author William Aviles
 * 
 **/

@Service("exportarService")
@Transactional
public class ExportarService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
    private static final String SEPARADOR = ",";
    private static final String SALTOLINEA = "\n";
    private static final String ENTER = "\r\n";
    private static final String QUOTE = "\"";
    private static final String COMILLA = "\"";
    private static final String ESPACIO = " ";
    
	
	
	public StringBuffer getExportData(String opcion, Long desde, Long hasta, String zonas, String zonafiltrar) throws Exception{
		StringBuffer sb = new StringBuffer();
		SessionImpl sessionImpl = (SessionImpl) sessionFactory.getCurrentSession();
        PreparedStatement pStatement = null;
        ResultSet res = null;
        String columnasHeader = "";
        String columnasSQL = "";
        String valores = "";
        
        try {
            //recuperar los nombres de las columnas
        	List<String> columns = new ArrayList<String>();
        	Statement st = sessionImpl.connection().createStatement();
        	
        	if(opcion.equals("OPC_EXP_1")) {
        		ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion <> 'noexport' and seccion <> 'seccionantroent' and seccion <> 'seccionantronin1' and seccion <> 'seccionantronin2' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	} 
        	}
        	else if(opcion.equals("OPC_EXP_2")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccion 1' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_3")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'secciona' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_4")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionb' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_5")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionc' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_6")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'secciond' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_7")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccione' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_8")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionf' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_9")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'secciong' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_10")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionh' order by seccion, orden");
	        	while(rset.next()) {
	        		columns.add(rset.getString("CAMPO"));
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_11")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionantroent' order by seccion, orden");
	        	while(rset.next()) {
	        		if(rset.getString("SECCION").equals("identificacion")){
	        			columns.add(rset.getString("CAMPO"));
	        		}
	        		else {
	        			columns.add(rset.getString("CAMPO").substring(0, rset.getString("CAMPO").length()-1));
	        		}
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_12")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionantronin1' order by seccion, orden");
	        	while(rset.next()) {
	        		if(rset.getString("SECCION").equals("identificacion")){
	        			columns.add(rset.getString("CAMPO"));
	        		}
	        		else {
	        			columns.add(rset.getString("CAMPO").substring(0, rset.getString("CAMPO").length()-1));
	        		}
	        	}
        	}
        	else if(opcion.equals("OPC_EXP_13")) {
	        	ResultSet rset = st.executeQuery("SELECT * FROM encuestadesc where seccion = 'identificacion' or seccion = 'seccionantronin2' order by seccion, orden");
	        	while(rset.next()) {
	        		if(rset.getString("SECCION").equals("identificacion")){
	        			columns.add(rset.getString("CAMPO"));
	        		}
	        		else {
	        			columns.add(rset.getString("CAMPO").substring(0, rset.getString("CAMPO").length()-1));
	        		}
	        	}
        	}
        	columnasSQL = parseColumnsTwo(columns);
            columnasSQL = columnasSQL +",segmentos.codigo as codigosegmento,segmentos.comunidad,segmentos.municipio,segmentos.departamento,segmentos.grupo,segmentos.region";
            
            columns.add("CODIGOSEGMENTO");
            columns.add("COMUNIDAD");
            columns.add("MUNICIPIO");
            columns.add("DEPARTAMENTO");
            columns.add("GRUPO");
            columns.add("REGION");
            if(opcion.equals("OPC_EXP_11")) {
            	columns.add("SEXOENT");
            }
            columnasHeader = parseColumns(columns);
            
            sb.append(columnasHeader);
            sb.append(SALTOLINEA);
            
            //pasar a recuperar los datos. Setear parametros si los hay
            StringBuilder sqlStrBuilder = new StringBuilder();
            sqlStrBuilder.append("select ").append(columnasSQL).append(" from encuesta ").append(" inner join segmentos on encuesta.segmento = segmentos.identificador where encuesta.pasivo='0' ");
            if(!(desde==null)) {
            	sqlStrBuilder.append(" and FECHAENTREVISTA between ? and ? ");
    		}
            if(zonas.equals("ZON_REP_1")) {
            	sqlStrBuilder.append(" and segmentos.GRUPO = ? ");
    		}
    		else if(zonas.equals("ZON_REP_2")) {
    			sqlStrBuilder.append(" and segmentos.REGION = ? ");
    		}
    		else if(zonas.equals("ZON_REP_3")) {
    			sqlStrBuilder.append(" and segmentos.departamento = ? ");
    		}
    		else if(zonas.equals("ZON_REP_4")) {
    			sqlStrBuilder.append(" and segmentos.municipio = ? ");
    		}
    		else if(zonas.equals("ZON_REP_5")) {
    			sqlStrBuilder.append(" and segmentos.identificador = ? ");
    		}
            if(opcion.equals("OPC_EXP_11")) {
            	sqlStrBuilder.append(" and pesoTallaEnt = '1' ");
            }
            if(opcion.equals("OPC_EXP_12")) {
            	sqlStrBuilder.append(" and pesoTallaNin = '1' and tallanin1 > 0");
            }
            if(opcion.equals("OPC_EXP_13")) {
            	sqlStrBuilder.append(" and pesoTallaNin = '1' and longnin1 > 0");
            }
            
            sqlStrBuilder.append(" order by fechaEntrevista, segmento, numEncuesta ");
            
            pStatement = sessionImpl.connection().prepareStatement(sqlStrBuilder.toString());
            
            if(!(desde==null)) {
    			Timestamp timeStampInicio = new Timestamp(desde);
    			Timestamp timeStampFinal = new Timestamp(hasta);
    			pStatement.setTimestamp(1, timeStampInicio);
                pStatement.setTimestamp(2, timeStampFinal);
                if(!zonas.equals("ZON_REP_0")) {
                	pStatement.setString(3, zonafiltrar);
                }
    		}
            else {
            	if(!zonas.equals("ZON_REP_0")) {
            		pStatement.setString(1, zonafiltrar);
                }
            }
            
            
            
            res = pStatement.executeQuery();
            
            while(res.next()){
            	for(String col : columns){
            		Object val = null;
            		if(col.equals("SEXOENT")) {
            			val = "2";
                	}
            		else {
            			val = res.getObject(col);
            		}
            		if (val!=null){
            			if (val instanceof String) {
            				String valFormat = val.toString().replaceAll(ENTER,ESPACIO).replaceAll(SALTOLINEA,ESPACIO);
            				//si contiene uno de estos caracteres especiales escapar
            				if (valFormat.contains(SEPARADOR) || valFormat.contains(COMILLA) || valFormat.contains(SALTOLINEA)) {
            					valores += SEPARADOR + QUOTE + valFormat.trim() + QUOTE;
            				} else {
            					if (valores.isEmpty()) valores += valFormat.trim();
            					else valores += SEPARADOR + valFormat.trim();
            				}
            			} else if (val instanceof Integer) {
            				if (valores.isEmpty()) valores += String.valueOf(res.getInt(col));
            				else valores += SEPARADOR + String.valueOf(res.getInt(col));
            			} else if (val instanceof Date) {
            				if (valores.isEmpty()) valores += DateToString(res.getDate(col), "dd/MM/yyyy");
            				else valores += SEPARADOR + DateToString(res.getDate(col), "dd/MM/yyyy");
            			} else if (val instanceof Float) {
            				if (valores.isEmpty()) valores += String.valueOf(res.getFloat(col));
            				else valores += SEPARADOR + String.valueOf(res.getFloat(col));
            			} else if (val.toString().matches("^[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.0$")) {
            				if (valores.isEmpty()) valores += TimeStampToString(res.getTimestamp(col), "dd/MM/yyyy");
            				else valores += SEPARADOR + TimeStampToString(res.getTimestamp(col), "dd/MM/yyyy");
            			} else {
            				if (valores.isEmpty()) valores += val;
            				else valores += SEPARADOR + val;
            			}
            			
            		}
            		else{
            			valores += SEPARADOR;
            		}
            	}
            	sb.append(valores);
            	valores = "";
            	sb.append(SALTOLINEA);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }finally {
            
        }
		return sb;
	}

    private static String parseColumns(List<String> columns){
        String columnas = "";
        for(String col : columns){
            if (columnas.isEmpty()) //es primer columna
                columnas+=col;
            else
                columnas += SEPARADOR + col;
        }
        return columnas;
    }
    
    private static String parseColumnsTwo(List<String> columns){
        String columnas = "";
        String nombreTabla = "encuesta.";
        for(String col : columns){
            if (columnas.isEmpty()) //es primer columna
                columnas+=nombreTabla+col;
            else
                columnas += SEPARADOR + nombreTabla+col;
        }
        return columnas;
    }
    
    public static String DateToString(Date dtFecha, String format)  {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        if(dtFecha!=null)
            return simpleDateFormat.format(dtFecha);
        else
            return null;
    }
    
    public static String TimeStampToString(Timestamp dtFecha, String format)  {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        if(dtFecha!=null)
            return simpleDateFormat.format(dtFecha);
        else
            return null;
    }
        
}
