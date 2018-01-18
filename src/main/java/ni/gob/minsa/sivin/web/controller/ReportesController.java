package ni.gob.minsa.sivin.web.controller;

import ni.gob.minsa.sivin.language.MessageResource;
import ni.gob.minsa.sivin.service.MessageResourceService;
import ni.gob.minsa.sivin.service.ReportesService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
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
@RequestMapping("/reportes/*")
public class ReportesController {
	private static final Logger logger = LoggerFactory.getLogger(ReportesController.class);

	@Resource(name="reportesService")
	private ReportesService reportesService;
	@Resource(name="messageResourceService")
	private MessageResourceService messageResourceService;
    
    
	@RequestMapping(value = "/family/", method = RequestMethod.GET)
    public String paginaReportesHogar(Model model) throws ParseException { 	
    	logger.debug("Reportes hogar");
    	List<MessageResource> reportesDisp = messageResourceService.getCatalogo("REP_HOG");
    	model.addAttribute("reportesDisp", reportesDisp);
    	List<MessageResource> zonasRep = messageResourceService.getCatalogo("ZON_REP");
    	model.addAttribute("zonasRep", zonasRep);
    	return "reportes/reporteHogar";
	}
	
    @RequestMapping(value = "/family/", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Object> fetchReportesHogar(@RequestParam(value = "reporte", required = true) String reporte,
    		@RequestParam(value = "daterange", required = true) String dateRange,
    		@RequestParam(value = "zonas", required = true) String zonas,
    		@RequestParam(value = "zonafiltrar", required = false, defaultValue = "") String zonafiltrar) throws ParseException {
        logger.info("Obteniendo reporte de hogar");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date date1 = formatter.parse(dateRange.substring(0, 10));
        Date date2 = formatter.parse(dateRange.substring(dateRange.length()-10, dateRange.length()));
        List<Object> datos = reportesService.reportesHogar(reporte,date1.getTime(), date2.getTime(),zonas,zonafiltrar);
        if (datos == null){
        	logger.debug("Nulo");
        }
        return datos;
    }
    
	@RequestMapping(value = "/house/", method = RequestMethod.GET)
    public String paginaReportesVivienda(Model model) throws ParseException { 	
    	logger.debug("Reportes vivienda");
    	List<MessageResource> reportesDisp = messageResourceService.getCatalogo("REP_VIV");
    	model.addAttribute("reportesDisp", reportesDisp);
    	List<MessageResource> zonasRep = messageResourceService.getCatalogo("ZON_REP");
    	model.addAttribute("zonasRep", zonasRep);
    	return "reportes/reporteVivienda";
	}
	
	@RequestMapping(value = "/house/", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Object> fetchReportesVivienda(@RequestParam(value = "reporte", required = true) String reporte,
    		@RequestParam(value = "daterange", required = true) String dateRange,
    		@RequestParam(value = "zonas", required = true) String zonas,
    		@RequestParam(value = "zonafiltrar", required = false, defaultValue = "") String zonafiltrar) throws ParseException {
        logger.info("Obteniendo reporte de vivienda");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date date1 = formatter.parse(dateRange.substring(0, 10));
        Date date2 = formatter.parse(dateRange.substring(dateRange.length()-10, dateRange.length()));
        List<Object> datos = reportesService.reportesVivienda(reporte,date1.getTime(), date2.getTime(),zonas,zonafiltrar);
        if (datos == null){
        	logger.debug("Nulo");
        }
        return datos;
    }
	
}
