package ni.gob.minsa.sivin.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
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
    
	
	
	public StringBuffer getExportData(String opcion, Timestamp desde, Timestamp hasta) throws Exception{
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
        	ResultSet rset = st.executeQuery("SELECT * FROM encuesta where 1=0");
        	ResultSetMetaData md = rset.getMetaData();
        	for (int i=1; i<=md.getColumnCount(); i++)
        	{
        		if (!(md.getColumnLabel(i).equalsIgnoreCase("identificador_equipo")||
        				md.getColumnLabel(i).equalsIgnoreCase("identificador")||
        				md.getColumnLabel(i).equalsIgnoreCase("pasivo")||
        				md.getColumnLabel(i).equalsIgnoreCase("estado")||
        				md.getColumnLabel(i).equalsIgnoreCase("segmento")||
        				md.getColumnLabel(i).equalsIgnoreCase("encuestador")||
        				md.getColumnLabel(i).equalsIgnoreCase("supervisor"))){
        			columns.add(md.getColumnLabel(i));
        		}
        	}
        	
            columnasSQL = parseColumnsTwo(columns);
            columnasSQL = columnasSQL +",segmentos.codigo as codigosegmento,segmentos.comunidad,segmentos.municipio,segmentos.departamento,segmentos.region";
            
            columns.add("CODIGOSEGMENTO");
            columns.add("COMUNIDAD");
            columns.add("MUNICIPIO");
            columns.add("DEPARTAMENTO");
            columns.add("REGION");
            columnasHeader = parseColumns(columns);
            
            sb.append(columnasHeader);
            sb.append(SALTOLINEA);
            
            //pasar a recuperar los datos. Setear parametros si los hay
            StringBuilder sqlStrBuilder = new StringBuilder();
            sqlStrBuilder.append("select ").append(columnasSQL).append(" from encuesta ").append(" inner join segmentos on encuesta.segmento = segmentos.identificador where encuesta.pasivo='0' ");
            sqlStrBuilder.append(" and FECHAENTREVISTA between ? and ? ");
            
            pStatement = sessionImpl.connection().prepareStatement(sqlStrBuilder.toString());
            pStatement.setTimestamp(1, desde);
            pStatement.setTimestamp(2, hasta);
            
            res = pStatement.executeQuery();
            
            ResultSetMetaData md2 = res.getMetaData();
            for (int i=1; i<=md2.getColumnCount(); i++)
        	{
        		System.out.println(md2.getColumnLabel(i));
        	}
            
            while(res.next()){
            	for(String col : columns){
            		Object val = res.getObject(col);
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
