package ni.gob.minsa.sivin.movil.controller;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ni.gob.minsa.sivin.domain.Segmento;
import ni.gob.minsa.sivin.service.UsuarioService;
import ni.gob.minsa.sivin.users.model.Authority;
import ni.gob.minsa.sivin.users.model.UserSistema;

/**
 * Controlador que provee los mapeos de la aplicacion movil para:
 * 
 * <ul>
 * <li>Ingreso de usuario
 * </ul>
 * 
 * @author William Aviles
 **/
@Controller
@RequestMapping("/movil/*")
public class UsuariosMovilController {
	@Resource(name="usuarioService")
	private UsuarioService usuarioService;
	private static final Logger logger = LoggerFactory.getLogger(UsuariosMovilController.class);
	
	/**
     * Retorna un usuario. Acepta una solicitud GET para JSON
     * @param username Nombre del usuario.
     * @return <code>UserSistema</code>
     */
	@RequestMapping(value = "ingreso/{username}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UserSistema getMessage(@PathVariable String username) {
    	logger.info("Accessando a la aplicacion " + username);
    	UserSistema user = usuarioService.getUser(username);
    	return user;
    }
	
    /**
     * Retorna roles. Acepta una solicitud GET para JSON
     * @param username Nombre del usuario.
     * @return roles JSON
     */
    @RequestMapping(value = "roles/{username}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Authority> descargarRolesUsuario(@PathVariable String username) {
        logger.info("Descargando toda la informacion de los datos de los roles para el usuario "+username);
        List<Authority> roles = usuarioService.getRolesUsuario(username);
        if (roles == null){
        	logger.debug(new Date() + " - Nulo");
        }
        else{
        	for (Authority auth : roles) {
        		auth.setUser(null);
        		auth.setRol(null);
        	}
        }
        return roles;	
    }
    
    
    /**
     * Retorna segmentos. Acepta una solicitud GET para JSON
     * @param username Nombre del usuario.
     * @return segmentos JSON
     */
    @RequestMapping(value = "segmentos/{username}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Segmento> descargarSegmentosUsuario(@PathVariable String username) {
        logger.info("Descargando toda la informacion de los datos de los segmentos para el usuario "+username);
        List<Segmento> segmentos = usuarioService.getSegmentosUsuario(username);
        if (segmentos == null){
        	logger.debug(new Date() + " - Nulo");
        }
        return segmentos;	
    }
       
}
