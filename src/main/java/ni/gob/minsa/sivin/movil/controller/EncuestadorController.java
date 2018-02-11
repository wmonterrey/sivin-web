package ni.gob.minsa.sivin.movil.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import ni.gob.minsa.sivin.domain.Encuestador;
import ni.gob.minsa.sivin.service.EncuestadorService;

import javax.annotation.Resource;

import java.util.Date;
import java.util.List;

/**
 * Controlador que provee los mapeos de la aplicacion movil para:
 * 
 * <ul>
 * <li>Enviar los encuestadores a la app movil
 * </ul>
 * 
 * @author William Aviles
 **/
@Controller
@RequestMapping("/movil/*")
public class EncuestadorController {

    private static final Logger logger = LoggerFactory.getLogger(EncuestadorController.class);

    @Resource(name = "encuestadorService")
    private EncuestadorService encuestadorService;

    /**
     * Retorna encuestadores. Acepta una solicitud GET para JSON
     * @return encuestadores JSON
     */
    @RequestMapping(value = "encuestadores", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Encuestador> descargarEncuestadores() {
        logger.info("Descargando toda la informacion de los datos de las encuestadores");
        List<Encuestador> encuestadores = encuestadorService.getEncuestadoresActivos();
        if (encuestadores == null){
        	logger.debug(new Date() + " - Nulo");
        }
        return encuestadores;	
    }
}
