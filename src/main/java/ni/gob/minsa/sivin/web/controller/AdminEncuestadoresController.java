package ni.gob.minsa.sivin.web.controller;

import com.google.gson.Gson;

import ni.gob.minsa.sivin.domain.Encuestador;
import ni.gob.minsa.sivin.domain.audit.AuditTrail;
import ni.gob.minsa.sivin.service.AuditTrailService;
import ni.gob.minsa.sivin.service.EncuestadorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Controlador web de peticiones relacionadas a encuestadores
 * 
 * @author William Aviles
 */
@Controller
@RequestMapping("/admin/encuestadores/*")
public class AdminEncuestadoresController {
	private static final Logger logger = LoggerFactory.getLogger(AdminEncuestadoresController.class);
	@Resource(name="auditTrailService")
	private AuditTrailService auditTrailService;
	@Resource(name="encuestadorService")
	private EncuestadorService encuestadorService;
    
    
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String obtenerEncuestadores(Model model) throws ParseException { 	
    	logger.debug("Mostrando encuestadores en JSP");
    	List<Encuestador> encuestadores = encuestadorService.getEncuestadores();
    	model.addAttribute("encuestadores", encuestadores);
    	return "admin/encuestadores/list";
	}
	
	
	/**
     * Custom handler for adding an encuestador.
     * @param model Modelo enlazado a la vista
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/newEncuestador/", method = RequestMethod.GET)
	public String initAddEncuestadorForm(Model model) {
    	return "admin/encuestadores/enterForm";
	}
    
    /**
     * Custom handler for displaying an encuestador.
     *
     * @param ident the ID of the encuestador to display
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping("/{ident}/")
    public ModelAndView showEncuestador(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuestador encuestador = this.encuestadorService.getEncuestador(ident);
        if(encuestador==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("admin/encuestadores/viewForm");
        	mav.addObject("encuestador",encuestador);
            List<AuditTrail> bitacora = auditTrailService.getBitacora(ident);
            mav.addObject("bitacora",bitacora);
        }
        return mav;
    }
    
    
    
	/**
     * Custom handler for editing an encuestador.
     * @param model Modelo enlazado a la vista
     * @param ident the ID of the encuestador to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/editEncuestador/{ident}/", method = RequestMethod.GET)
	public String initUpdateEncuestadorForm(@PathVariable("ident") String ident, Model model) {
		Encuestador encuestadorEditar = this.encuestadorService.getEncuestador(ident);
		if(encuestadorEditar!=null){
			model.addAttribute("encuestador",encuestadorEditar);
			return "admin/encuestadores/enterForm";
		}
		else{
			return "403";
		}
	}
    
    /**
     * Custom handler for saving an encuestador.
     * 
     * @param ident Identificador unico
     * @param codigo codigo del encuestador
     * @param nombre nombre del encuestador
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping( value="/saveEncuestador/", method=RequestMethod.POST)
	public ResponseEntity<String> processUpdateUserForm( @RequestParam(value="ident", required=false, defaultValue="" ) String ident
	        , @RequestParam( value="codigo", required=true ) String codigo
	        , @RequestParam( value="nombre", required=true ) String nombre
	        )
	{
    	try{
			Encuestador encuestador = new Encuestador();
			//Si el ident viene en blanco es un nuevo encuestador
			if (ident.equals("")){
				//Crear un nuevo encuestador
				ident = new UUID(SecurityContextHolder.getContext().getAuthentication().getName().hashCode(),new Date().hashCode()).toString();
				encuestador.setIdent(ident);
				encuestador.setCodigo(codigo);
				encuestador.setNombre(nombre);
				encuestador.setRecordUser(SecurityContextHolder.getContext().getAuthentication().getName());
				encuestador.setRecordDate(new Date());
				//Guardar el nuevo encuestador
				this.encuestadorService.saveEncuestador(encuestador);
			}
			//Si el ident no viene en blanco hay que editar el encuestador
			else{
				//Recupera el encuestador de la base de datos
				encuestador = encuestadorService.getEncuestador(ident);
				encuestador.setCodigo(codigo);
				encuestador.setNombre(nombre);
				//Actualiza el encuestador
				this.encuestadorService.saveEncuestador(encuestador);
			}
			return createJsonResponse(encuestador);
    	}
		catch (DataIntegrityViolationException e){
			String message = e.getMostSpecificCause().getMessage();
			Gson gson = new Gson();
		    String json = gson.toJson(message);
			return new ResponseEntity<String>( json, HttpStatus.CREATED);
		}
		catch(Exception e){
			Gson gson = new Gson();
		    String json = gson.toJson(e.toString());
			return new ResponseEntity<String>( json, HttpStatus.CREATED);
		}
    	
	}
   
    
    /**
     * Custom handler for disabling an encuestador.
     *
     * @param ident the ID of the encuestador to disable
     * @param redirectAttributes Regresa nombre de encuestador
     * @return a String
     */
    @RequestMapping("/desEncuestador/{ident}/")
    public String disableUser(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
		Encuestador encuestador = this.encuestadorService.getEncuestador(ident);
    	if(encuestador!=null){
    		encuestador.setPasive('1');
    		this.encuestadorService.saveEncuestador(encuestador);
    		redirectAttributes.addFlashAttribute("encuestadorDeshabilitado", true);
    		redirectAttributes.addFlashAttribute("nombreEncuestador", encuestador.getNombre());
    		redirecTo = "redirect:/admin/encuestadores/";
    	}
    	else{
    		redirecTo = "403";
    	}
    	return redirecTo;	
    }
    
    
    /**
     * Custom handler for enabling an encuestador.
     *
     * @param ident the ID of the encuestador to enable
     * @param redirectAttributes Regresa nombre de encuestador
     * @return a String
     */
    @RequestMapping("/habEncuestador/{ident}/")
    public String enableUser(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
		Encuestador encuestador = this.encuestadorService.getEncuestador(ident);
    	if(encuestador!=null){
    		encuestador.setPasive('0');
    		this.encuestadorService.saveEncuestador(encuestador);
    		redirectAttributes.addFlashAttribute("encuestadorHabilitado", true);
    		redirectAttributes.addFlashAttribute("nombreEncuestador", encuestador.getNombre());
    		redirecTo = "redirect:/admin/encuestadores/";
    	}
    	else{
    		redirecTo = "403";
    	}
    	return redirecTo;	
    }
    
    
    private ResponseEntity<String> createJsonResponse( Object o )
	{
	    HttpHeaders headers = new HttpHeaders();
	    headers.set("Content-Type", "application/json");
	    Gson gson = new Gson();
	    String json = gson.toJson(o);
	    return new ResponseEntity<String>( json, headers, HttpStatus.CREATED );
	}
	
}
