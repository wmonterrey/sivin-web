package ni.gob.minsa.sivin.movil.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import ni.gob.minsa.sivin.domain.Encuesta;
import ni.gob.minsa.sivin.service.EncuestaService;

import javax.annotation.Resource;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 
 * 
 * 
 */
@Controller
@RequestMapping("/movil/*")
public class EncuestaController {

    private static final Logger logger = LoggerFactory.getLogger(EncuestaController.class);

    @Resource(name = "encuestaService")
    private EncuestaService encuestaService;

    /**
     * Retorna encuestas. Acepta una solicitud GET para JSON
     * @return encuestas JSON
     */
    @RequestMapping(value = "encuestas/{username}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Encuesta> descargarEncuestasUsuario(@PathVariable String username) {
        logger.info("Descargando toda la informacion de los datos de las encuestas para el usuario "+username);
        List<Encuesta> encuestas = encuestaService.getEncuestasUsuario(username);
        if (encuestas == null){
        	logger.debug(new Date() + " - Nulo");
        }
        return encuestas;	
    }
    
    /**
     * Acepta una solicitud POST con un JSON
     * @param envio Objeto serializado de Zp00Screening
     * @return String con el resultado
     */
    @RequestMapping(value = "encuestas", method = RequestMethod.POST, consumes = "application/json")
    public @ResponseBody String saveEncuestas(@RequestBody Encuesta[] envio) {
        logger.debug("Insertando/Actualizando formularios Encuesta");
        if (envio == null){
            logger.debug("Nulo");
            return "No recibi nada!";
        }
        else{
            List<Encuesta> encuestas = Arrays.asList(envio);
            for (Encuesta encuesta : encuestas){
            	encuestaService.saveEncuesta(encuesta);
            }
        }
        return "Datos recibidos!";
    }

}
