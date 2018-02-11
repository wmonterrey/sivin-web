package ni.gob.minsa.sivin.movil.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ni.gob.minsa.sivin.domain.Supervisor;
import ni.gob.minsa.sivin.service.SupervisorService;

import javax.annotation.Resource;

import java.util.Date;
import java.util.List;

/**
 * Controlador que provee los mapeos de la aplicacion movil para:
 * 
 * <ul>
 * <li>Enviar los supervisores a la app movil
 * </ul>
 * 
 * @author William Aviles
 **/
@Controller
@RequestMapping("/movil/*")
public class SupervisorController {

    private static final Logger logger = LoggerFactory.getLogger(SupervisorController.class);

    @Resource(name = "supervisorService")
    private SupervisorService supervisorService;

    /**
     * Retorna supervisores. Acepta una solicitud GET para JSON
     * @return encuestas JSON
     */
    @RequestMapping(value = "supervisores", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Supervisor> descargarSupervisores() {
        logger.info("Descargando toda la informacion de los datos de las encuestadores");
        List<Supervisor> supervisores = supervisorService.getSupervisoresActivos();
        if (supervisores == null){
        	logger.debug(new Date() + " - Nulo");
        }
        return supervisores;	
    }
}
