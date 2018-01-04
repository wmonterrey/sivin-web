package ni.gob.minsa.sivin.web.controller;

import com.google.gson.Gson;

import ni.gob.minsa.sivin.domain.Supervisor;
import ni.gob.minsa.sivin.domain.audit.AuditTrail;
import ni.gob.minsa.sivin.service.AuditTrailService;
import ni.gob.minsa.sivin.service.SupervisorService;
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
 * Controlador web de peticiones relacionadas a supervisores
 * 
 * @author William Aviles
 */
@Controller
@RequestMapping("/admin/supervisores/*")
public class AdminSupervisoresController {
	private static final Logger logger = LoggerFactory.getLogger(AdminSupervisoresController.class);
	@Resource(name="auditTrailService")
	private AuditTrailService auditTrailService;
	@Resource(name="supervisorService")
	private SupervisorService supervisorService;
    
    
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String obtenerSupervisores(Model model) throws ParseException { 	
    	logger.debug("Mostrando supervisores en JSP");
    	List<Supervisor> supervisores = supervisorService.getSupervisores();
    	model.addAttribute("supervisores", supervisores);
    	return "admin/supervisores/list";
	}
	
	
	/**
     * Custom handler for adding an supervisor.
     * @param model Modelo enlazado a la vista
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/newSupervisor/", method = RequestMethod.GET)
	public String initAddSupervisorForm(Model model) {
    	return "admin/supervisores/enterForm";
	}
    
    /**
     * Custom handler for displaying an supervisor.
     *
     * @param ident the ID of the supervisor to display
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping("/{ident}/")
    public ModelAndView showSupervisor(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Supervisor supervisor = this.supervisorService.getSupervisor(ident);
        if(supervisor==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("admin/supervisores/viewForm");
        	mav.addObject("supervisor",supervisor);
            List<AuditTrail> bitacora = auditTrailService.getBitacora(ident);
            mav.addObject("bitacora",bitacora);
        }
        return mav;
    }
    
    
    
	/**
     * Custom handler for editing an supervisor.
     * @param model Modelo enlazado a la vista
     * @param ident the ID of the supervisor to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/editSupervisor/{ident}/", method = RequestMethod.GET)
	public String initUpdateSupervisorForm(@PathVariable("ident") String ident, Model model) {
		Supervisor supervisorEditar = this.supervisorService.getSupervisor(ident);
		if(supervisorEditar!=null){
			model.addAttribute("supervisor",supervisorEditar);
			return "admin/supervisores/enterForm";
		}
		else{
			return "403";
		}
	}
    
    /**
     * Custom handler for saving an supervisor.
     * 
     * @param ident Identificador unico
     * @param codigo codigo del supervisor
     * @param nombre nombre del supervisor
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping( value="/saveSupervisor/", method=RequestMethod.POST)
	public ResponseEntity<String> processUpdateUserForm( @RequestParam(value="ident", required=false, defaultValue="" ) String ident
	        , @RequestParam( value="codigo", required=true ) String codigo
	        , @RequestParam( value="nombre", required=true ) String nombre
	        )
	{
    	try{
			Supervisor supervisor = new Supervisor();
			//Si el ident viene en blanco es un nuevo supervisor
			if (ident.equals("")){
				//Crear un nuevo supervisor
				ident = new UUID(SecurityContextHolder.getContext().getAuthentication().getName().hashCode(),new Date().hashCode()).toString();
				supervisor.setIdent(ident);
				supervisor.setCodigo(codigo);
				supervisor.setNombre(nombre);
				supervisor.setRecordUser(SecurityContextHolder.getContext().getAuthentication().getName());
				supervisor.setRecordDate(new Date());
				//Guardar el nuevo supervisor
				this.supervisorService.saveSupervisor(supervisor);
			}
			//Si el ident no viene en blanco hay que editar el supervisor
			else{
				//Recupera el supervisor de la base de datos
				supervisor = supervisorService.getSupervisor(ident);
				supervisor.setCodigo(codigo);
				supervisor.setNombre(nombre);
				//Actualiza el supervisor
				this.supervisorService.saveSupervisor(supervisor);
			}
			return createJsonResponse(supervisor);
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
     * Custom handler for disabling an supervisor.
     *
     * @param ident the ID of the supervisor to disable
     * @param redirectAttributes Regresa nombre de supervisor
     * @return a String
     */
    @RequestMapping("/desSupervisor/{ident}/")
    public String disableUser(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
		Supervisor supervisor = this.supervisorService.getSupervisor(ident);
    	if(supervisor!=null){
    		supervisor.setPasive('1');
    		this.supervisorService.saveSupervisor(supervisor);
    		redirectAttributes.addFlashAttribute("supervisorDeshabilitado", true);
    		redirectAttributes.addFlashAttribute("nombreSupervisor", supervisor.getNombre());
    		redirecTo = "redirect:/admin/supervisores/";
    	}
    	else{
    		redirecTo = "403";
    	}
    	return redirecTo;	
    }
    
    
    /**
     * Custom handler for enabling an supervisor.
     *
     * @param ident the ID of the supervisor to enable
     * @param redirectAttributes Regresa nombre de supervisor
     * @return a String
     */
    @RequestMapping("/habSupervisor/{ident}/")
    public String enableUser(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
		Supervisor supervisor = this.supervisorService.getSupervisor(ident);
    	if(supervisor!=null){
    		supervisor.setPasive('0');
    		this.supervisorService.saveSupervisor(supervisor);
    		redirectAttributes.addFlashAttribute("supervisorHabilitado", true);
    		redirectAttributes.addFlashAttribute("nombreSupervisor", supervisor.getNombre());
    		redirecTo = "redirect:/admin/supervisores/";
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
