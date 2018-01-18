package ni.gob.minsa.sivin.web.controller;

import ni.gob.minsa.sivin.domain.Segmento;
import ni.gob.minsa.sivin.language.MessageResource;
import ni.gob.minsa.sivin.service.MessageResourceService;
import ni.gob.minsa.sivin.service.SegmentoService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Controlador web de peticiones relacionadas a reportes
 * 
 * @author William Aviles
 */
@Controller
@RequestMapping("/opciones/*")
public class OpcionesController {
	private static final Logger logger = LoggerFactory.getLogger(OpcionesController.class);

	@Resource(name="segmentoService")
	private SegmentoService segmentoService;
	@Resource(name="messageResourceService")
	private MessageResourceService messageResourceService;
    
    
	/**
     * Retorna una lista de segmentos. Acepta una solicitud GET para JSON
     * @return Un arreglo JSON de segmentos
     */
    @RequestMapping(value = "segmentos", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Segmento> fetchSegmentosJson() {
        logger.info("Obteniendo los segmentos en JSON");
        
        List<Segmento> segmentos = segmentoService.getSegmentosActivos();
        if (segmentos == null){
        	logger.debug("Nulo");
        }
        return segmentos;	
    }
    
    /**
     * Retorna una lista de messageresource. Acepta una solicitud GET para JSON
     * @return Un arreglo JSON de messageresource
     */
    @RequestMapping(value = "procedencias", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<MessageResource> fetchProcedenciasJson() {
        logger.info("Obteniendo los procedencias en JSON");
        
        List<MessageResource> procedencias = messageResourceService.getCatalogo("PROC");
        if (procedencias == null){
        	logger.debug("Nulo");
        }
        return procedencias;	
    }
    
    
	/**
     * Retorna una lista de strings municipios. Acepta una solicitud GET para JSON
     * @return Un arreglo JSON de strings municipios
     */
    @RequestMapping(value = "municipios", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<String> fetchMunicipiosJson() {
        logger.info("Obteniendo los municipios en JSON");
        
        List<String> municipios = segmentoService.getMunicipiosActivos();
        if (municipios == null){
        	logger.debug("Nulo");
        }
        return municipios;	
    }
    
    /**
     * Retorna una lista de strings departamentos. Acepta una solicitud GET para JSON
     * @return Un arreglo JSON de strings departamentos
     */
    @RequestMapping(value = "departamentos", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<String> fetchDepartamentosJson() {
        logger.info("Obteniendo los departamentos en JSON");
        
        List<String> departamentos = segmentoService.getDepartamentosActivos();
        if (departamentos == null){
        	logger.debug("Nulo");
        }
        return departamentos;	
    }
    
    /**
     * Retorna una lista de strings regiones. Acepta una solicitud GET para JSON
     * @return Un arreglo JSON de strings regiones
     */
    @RequestMapping(value = "regiones", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<String> fetchRegionesJson() {
        logger.info("Obteniendo los regiones en JSON");
        
        List<String> departamentos = segmentoService.getRegionesActivos();
        if (departamentos == null){
        	logger.debug("Nulo");
        }
        return departamentos;	
    }
	
}
