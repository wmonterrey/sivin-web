package ni.gob.minsa.sivin;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ni.gob.minsa.sivin.service.DashboardService;
/**
 * Controlador que provee los mapeos en la pagina Web para:
 * 
 * <ul>
 * <li>Pagina Principal
 * <li>Pagina de Ingreso
 * <li>Ingreso Fallido
 * <li>Pagina de Salida
 * <li>No autorizado
 * <li>No encontrado
 * </ul>
 * 
 * @author William Aviles
 **/
@Controller
@RequestMapping("/*")
public class HomeController {
	@Resource(name="dashboardService")
	private DashboardService dashboardService;
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
    	logger.info("SIVIN Iniciado...");
    	List<Object> datosEncuestasxFecha = dashboardService.getDatosEncuestaxFecha();
    	model.addAttribute("datosEncuestasxFecha", datosEncuestasxFecha);
    	List<Object> datosEncuestasxSegmento = dashboardService.getDatosEncuestaxSegmento();
    	model.addAttribute("datosEncuestasxSegmento", datosEncuestasxSegmento);
    	List<Object> datosEncuestasxMunicipio = dashboardService.getDatosEncuestaxMunicipio();
    	model.addAttribute("datosEncuestasxMunicipio", datosEncuestasxMunicipio);
    	List<Object> datosEncuestasxDepartamento = dashboardService.getDatosEncuestaxDepartamento();
    	model.addAttribute("datosEncuestasxDepartamento", datosEncuestasxDepartamento);
    	List<Object> datosEncuestasxRegion = dashboardService.getDatosEncuestaxRegion();
    	model.addAttribute("datosEncuestasxRegion", datosEncuestasxRegion);
    	List<Object> datosEncuestasxProcedencia = dashboardService.getDatosEncuestaxProcedencia();
    	model.addAttribute("datosEncuestasxProcedencia", datosEncuestasxProcedencia);
    	List<Object> datosEncuestasxSexo = dashboardService.getDatosEncuestaxSexo();
    	model.addAttribute("datosEncuestasxSexo", datosEncuestasxSexo);
    	Long numUsuarios = dashboardService.getNumUsuarios();
    	Long numUsuariosEnc = dashboardService.getNumUsuariosEnc();
    	float porcUsuariosActivos = numUsuariosEnc.floatValue() / numUsuarios.floatValue() * 100;
    	model.addAttribute("porcUsuariosActivos", porcUsuariosActivos);
    	model.addAttribute("numUsuarios", numUsuarios);
    	model.addAttribute("numUsuariosEnc", numUsuariosEnc);
    	Long numSegmentos = dashboardService.getNumSegmentos();
    	Long numSegmentosEnc = dashboardService.getNumSegmentosEnc();
    	float porcSegmentosActivos = numSegmentosEnc.floatValue() / numSegmentos.floatValue() * 100;
    	model.addAttribute("porcSegmentosActivos", porcSegmentosActivos);
    	model.addAttribute("numSegmentos", numSegmentos);
    	model.addAttribute("numSegmentosEnc", numSegmentosEnc);
    	Long numEncSup = dashboardService.getNumEncSup();
    	model.addAttribute("numEncSup", numEncSup);
    	return "home";
    }
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}
    
    @RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
    	model.addAttribute("error", "true");
		return "login";
	}
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/403", method = RequestMethod.GET)
	public String noAcceso() {
		return "403"; 
	}
	
	@RequestMapping(value="/404", method = RequestMethod.GET)
	public String noEncontrado() { 
		return "404";
	}
    
	@RequestMapping( value="keepsession")
	public @ResponseBody String keepSession()
	{	
		return "OK";
	}
    
}
