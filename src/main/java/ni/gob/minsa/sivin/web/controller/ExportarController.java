package ni.gob.minsa.sivin.web.controller;

import ni.gob.minsa.sivin.language.MessageResource;
import ni.gob.minsa.sivin.service.ExportarService;
import ni.gob.minsa.sivin.service.MessageResourceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Controlador web de peticiones relacionadas a reportes
 * 
 * @author William Aviles
 */
@Controller
@RequestMapping("/exportar/*")
public class ExportarController {
	private static final Logger logger = LoggerFactory.getLogger(ExportarController.class);

	@Resource(name="exportarService")
	private ExportarService exportarService;
	@Resource(name="messageResourceService")
	private MessageResourceService messageResourceService;
    
    
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String paginaReportesHogar(Model model) throws ParseException { 	
    	logger.debug("Exportar datos");
    	List<MessageResource> opcionesDisp = messageResourceService.getCatalogo("OPC_EXP");
    	model.addAttribute("opcionesDisp", opcionesDisp);
    	return "exportar/exportarDatos";
	}
	
    @RequestMapping(value = "/getdata/", method = RequestMethod.GET)
    public void getData(@RequestParam(value = "opcion", required = true) String opcion,
    		@RequestParam(value = "daterange", required = false, defaultValue = "") String daterange,
            HttpServletResponse response) throws Exception {
    	
    	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date date1 = formatter.parse(daterange.substring(0, 10));
        Date date2 = formatter.parse(daterange.substring(daterange.length()-10, daterange.length()));
        Timestamp desde = new Timestamp(date1.getTime());
        Timestamp hasta = new Timestamp(date2.getTime());
        StringBuffer registros = exportarService.getExportData(opcion,desde,hasta);
        InputStream inputStream = new ByteArrayInputStream(registros.toString().getBytes());
        String mimeType = "text/csv";
        response.setContentType(mimeType);
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + "encuestasivin.csv" +"\""));
        response.setContentLength(registros.length());
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }

	
}
