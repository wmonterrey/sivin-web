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
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    	List<MessageResource> zonasRep = messageResourceService.getCatalogo("ZON_REP");
    	model.addAttribute("zonasRep", zonasRep);
    	return "exportar/exportarDatos";
	}
	
    @RequestMapping(value = "/getdata/", method = RequestMethod.GET)
    public void getData(@RequestParam(value = "opcion", required = true) String opcion,
    		@RequestParam(value = "daterange", required = false, defaultValue = "") String dateRange,
    		@RequestParam(value = "zonas", required = true) String zonas,
    		@RequestParam(value = "zonafiltrar", required = false, defaultValue = "") String zonafiltrar,
            HttpServletResponse response) throws Exception {
    	
    	
    	Long desde = null;
        Long hasta = null;
        if (!dateRange.matches("")) {
        	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        	desde = formatter.parse(dateRange.substring(0, 10)).getTime();
        	hasta = formatter.parse(dateRange.substring(dateRange.length()-10, dateRange.length())).getTime();
        }
    	
        StringBuffer registros = exportarService.getExportData(opcion,desde,hasta, zonas, zonafiltrar);
        InputStream inputStream = new ByteArrayInputStream(registros.toString().getBytes());
        String mimeType = "text/csv";
        response.setContentType(mimeType);
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + "encuestasivin.csv" +"\""));
        response.setContentLength(registros.length());
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }

	
}
