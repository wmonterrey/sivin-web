package ni.gob.minsa.sivin.web.controller;

import ni.gob.minsa.sivin.domain.Encuesta;
import ni.gob.minsa.sivin.domain.Encuestador;
import ni.gob.minsa.sivin.domain.Supervisor;
import ni.gob.minsa.sivin.domain.audit.AuditTrail;
import ni.gob.minsa.sivin.language.MessageResource;
import ni.gob.minsa.sivin.service.AuditTrailService;
import ni.gob.minsa.sivin.service.EncuestaService;
import ni.gob.minsa.sivin.service.EncuestadorService;
import ni.gob.minsa.sivin.service.MessageResourceService;
import ni.gob.minsa.sivin.service.SupervisorService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import javax.annotation.Resource;
import javax.validation.Valid;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Controlador web de peticiones relacionadas a supervisar encuestas
 * 
 * @author William Aviles
 */
@Controller
@RequestMapping("/super/*")
public class SuperEncuestasController {
	private static final Logger logger = LoggerFactory.getLogger(SuperEncuestasController.class);

	@Resource(name="messageResourceService")
	private MessageResourceService messageResourceService;
	@Resource(name="auditTrailService")
	private AuditTrailService auditTrailService;
	@Resource(name="encuestaService")
	private EncuestaService encuestaService;
	@Resource(name="encuestadorService")
	private EncuestadorService encuestadorService;
	@Resource(name="supervisorService")
	private SupervisorService supervisorService;
    
    
	@RequestMapping(value = "/encuestas/", method = RequestMethod.GET)
    public String buscarEncuestas(Model model) throws ParseException { 	
    	logger.debug("Buscar encuestas");
    	List<MessageResource> zonasRep = messageResourceService.getCatalogo("ZON_REP");
    	model.addAttribute("zonasRep", zonasRep);
    	return "super/buscarEncuesta";
	}
	
	@RequestMapping(value = "/encuestas/", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Encuesta> fetchEncuestas(@RequestParam(value = "codigo", required = false, defaultValue = "") String codigo,
    		@RequestParam(value = "nombre", required = false, defaultValue = "") String nombre,
    		@RequestParam(value = "daterange", required = false, defaultValue = "") String dateRange,
    		@RequestParam(value = "zonas", required = true) String zonas,
    		@RequestParam(value = "zonafiltrar", required = false, defaultValue = "") String zonafiltrar) throws ParseException {
        logger.info("Obteniendo encuestas");
        Long desde = null;
        Long hasta = null;
        if (!dateRange.matches("")) {
        	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        	desde = formatter.parse(dateRange.substring(0, 10)).getTime();
        	hasta = formatter.parse(dateRange.substring(dateRange.length()-10, dateRange.length())).getTime();
        }
        List<Encuesta> datos = encuestaService.getEncuestasSupervisar(codigo, nombre, desde, hasta, zonas, zonafiltrar);
        if (datos == null){
        	logger.debug("Nulo");
        }
        return datos;
    }
	
    /**
     * Custom handler for displaying an encuesta.
     *
     * @param ident the ID of the encuesta to display
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping("/encuestas/{ident}/")
    public ModelAndView showEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/verEncuesta");
        	mav.addObject("encuesta",encuesta);
            List<AuditTrail> bitacora = auditTrailService.getBitacora(ident);
            mav.addObject("bitacora",bitacora);
        }
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta identificacion.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/identificacion/{ident}/", method = RequestMethod.GET)
    public ModelAndView editIdentificacionEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	List<MessageResource> sexos = messageResourceService.getCatalogo("CAT_SEXO");
        	mav = new ModelAndView("super/editIdentificacion");
        	mav.addObject("encuesta",encuesta);
        	mav.addObject("sexos",sexos);
        }
        return mav;
    }
    
    
    @RequestMapping(value = "/encuestas/saveIdentificacionEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveIdentificacionEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setJefeFamilia(encuesta.getJefeFamilia());
        encuestaBD.setSexJefeFamilia(encuesta.getSexJefeFamilia());
        encuestaBD.setNumPersonas(encuesta.getNumPersonas());
        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    /**
     * Custom handler for editing an encuesta seccion A.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/secciona/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionAEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionA");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> caguas = messageResourceService.getCatalogo("CAT_AGUA");
        	mav.addObject("caguas",caguas);
        	List<MessageResource> clugNecesidades = messageResourceService.getCatalogo("CAT_NECESIDADES");
        	mav.addObject("clugNecesidades",clugNecesidades);
        	List<MessageResource> cusaCocinar = messageResourceService.getCatalogo("CAT_COCINA");
        	mav.addObject("cusaCocinar",cusaCocinar);
        	List<MessageResource> carticulos = messageResourceService.getCatalogo("CAT_ARTICULOS");
        	mav.addObject("carticulos",carticulos);
        }
        return mav;
    }
    
    @RequestMapping(value = "/encuestas/saveSeccionAEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionAEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setAgua(encuesta.getAgua());
        encuestaBD.setOagua(encuesta.getOagua());
        encuestaBD.setCuartos(encuesta.getCuartos());
        encuestaBD.setLugNecesidades(encuesta.getLugNecesidades());
        encuestaBD.setOlugNecesidades(encuesta.getOlugNecesidades());
        encuestaBD.setUsaCocinar(encuesta.getUsaCocinar());
        encuestaBD.setOusaCocinar(encuesta.getOusaCocinar());
        encuestaBD.setArticulos(encuesta.getArticulos());
        encuestaBD.setOarticulos(encuesta.getOarticulos());

        
        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta seccion B.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/seccionb/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionBEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionB");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> sinos = messageResourceService.getCatalogo("CAT_SINO");
        	mav.addObject("sinos",sinos);
        	List<MessageResource> niveles = messageResourceService.getCatalogo("CAT_NIVEL");
        	mav.addObject("niveles",niveles);
        	List<MessageResource> grados = messageResourceService.getCatalogo("CAT_GRADO");
        	mav.addObject("grados",grados);
        	List<MessageResource> entrevistados = messageResourceService.getCatalogo("CAT_ENTREVISTADO");
        	mav.addObject("entrevistados",entrevistados);
        	List<MessageResource> sinonrs = messageResourceService.getCatalogo("CAT_SINONR");
        	mav.addObject("sinonrs",sinonrs);
        	List<MessageResource> hierrofrecs = messageResourceService.getCatalogo("CAT_HIERROFREC");
        	mav.addObject("hierrofrecs",hierrofrecs);
        	List<MessageResource> hierrotiempos = messageResourceService.getCatalogo("CAT_HIERROTIEMP");
        	mav.addObject("hierrotiempos",hierrotiempos);
        	List<MessageResource> hierrolugares = messageResourceService.getCatalogo("CAT_HIERROOBT");
        	mav.addObject("hierrolugares",hierrolugares);
        	List<MessageResource> vitas = messageResourceService.getCatalogo("CAT_VITA");
        	mav.addObject("vitas",vitas);
        	List<MessageResource> evitaembs = messageResourceService.getCatalogo("CAT_XEMB");
        	mav.addObject("evitaembs",evitaembs);
        	List<MessageResource> obtieneantics = messageResourceService.getCatalogo("CAT_DXEMB");
        	mav.addObject("obtieneantics",obtieneantics);
        }
        return mav;
    }
    
    @RequestMapping(value = "/encuestas/saveSeccionBEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionBEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        
        encuestaBD.setConoceFNac(encuesta.getConoceFNac());
        encuestaBD.setFnacEnt(encuesta.getFnacEnt());
        encuestaBD.setEdadEnt(encuesta.getEdadEnt());
        encuestaBD.setLeerEnt(encuesta.getLeerEnt());
        encuestaBD.setEscribirEnt(encuesta.getEscribirEnt());
        encuestaBD.setLeeescEnt(encuesta.getLeeescEnt());
        encuestaBD.setNivelEnt(encuesta.getNivelEnt());
        encuestaBD.setGradoEnt(encuesta.getGradoEnt());
        encuestaBD.setEntRealizada(encuesta.getEntRealizada());
        encuestaBD.setEntEmb(encuesta.getEntEmb());
        encuestaBD.setEntDioluz(encuesta.getEntDioluz());
        encuestaBD.setEntHieacfol(encuesta.getEntHieacfol());
        encuestaBD.setEntMeseshierro(encuesta.getEntMeseshierro());
        encuestaBD.setEntRecHierro(encuesta.getEntRecHierro());
        encuestaBD.setEntORecHierro(encuesta.getEntORecHierro());
        encuestaBD.setTiemHierroUnd(encuesta.getTiemHierroUnd());
        encuestaBD.setTiemHierro(encuesta.getTiemHierro());
        encuestaBD.setDondeHierro(encuesta.getDondeHierro());
        encuestaBD.setDondeHierroBesp(encuesta.getDondeHierroBesp());
        encuestaBD.setDondeHierroFesp(encuesta.getDondeHierroFesp());
        encuestaBD.setTomadoHierro(encuesta.getTomadoHierro());
        encuestaBD.setVita(encuesta.getVita());
        encuestaBD.setTiempVita(encuesta.getTiempVita());
        encuestaBD.setEvitaEmb(encuesta.getEvitaEmb());
        encuestaBD.setDondeAntic(encuesta.getDondeAntic());
        encuestaBD.setNuevoEmb(encuesta.getNuevoEmb());
        encuestaBD.setHierro(encuesta.getHierro());
        encuestaBD.setdHierro(encuesta.getdHierro());

        
        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta seccion C.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/seccionc/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionCEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionC");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> sexos = messageResourceService.getCatalogo("CAT_SEXO");
        	mav.addObject("sexos",sexos);
        	List<MessageResource> calimentos = messageResourceService.getCatalogo("CAT_CALIM");
        	mav.addObject("calimentos",calimentos);
        	List<MessageResource> consistencias = messageResourceService.getCatalogo("CAT_CONSALIM");
        	mav.addObject("consistencias",consistencias);
        	List<MessageResource> calimenfermos = messageResourceService.getCatalogo("CAT_AENF");
        	mav.addObject("calimenfermos",calimenfermos);
        	List<MessageResource> clecheenfermos = messageResourceService.getCatalogo("CAT_LENF");
        	mav.addObject("clecheenfermos",clecheenfermos);
        }
        return mav;
    }
    
    
    @RequestMapping(value = "/encuestas/saveSeccionCEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionCEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setNumNinos(encuesta.getNumNinos());
        encuestaBD.setN1(encuesta.getN1());
        encuestaBD.setN2(encuesta.getN2());
        encuestaBD.setN3(encuesta.getN3());
        encuestaBD.setN4(encuesta.getN4());
        encuestaBD.setN5(encuesta.getN5());
        encuestaBD.setN6(encuesta.getN6());
        encuestaBD.setE1(encuesta.getE1());
        encuestaBD.setE2(encuesta.getE2());
        encuestaBD.setE3(encuesta.getE3());
        encuestaBD.setE4(encuesta.getE4());
        encuestaBD.setE5(encuesta.getE5());
        encuestaBD.setE6(encuesta.getE6());
        encuestaBD.setNselec(encuesta.getNselec());
        encuestaBD.setNomselec(encuesta.getNomselec());
        encuestaBD.setFnacselec(encuesta.getFnacselec());
        encuestaBD.setEselect(encuesta.getEselect());
        encuestaBD.setSexselec(encuesta.getSexselec());
        encuestaBD.setCalim(encuesta.getCalim());
        encuestaBD.setVcome(encuesta.getVcome());
        encuestaBD.setConsalim(encuesta.getConsalim());
        encuestaBD.setCalimenf(encuesta.getCalimenf());
        encuestaBD.setClecheenf(encuesta.getClecheenf());

        
        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta seccion D.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/secciond/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionDEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionD");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> gotas = messageResourceService.getCatalogo("CAT_GOTHIE");
        	mav.addObject("gotas",gotas);
        	List<MessageResource> lugares = messageResourceService.getCatalogo("CAT_HIERROOBTNIN");
        	mav.addObject("lugares",lugares);
        	List<MessageResource> sinonts = messageResourceService.getCatalogo("CAT_SINONT");
        	mav.addObject("sinonts",sinonts);
        	List<MessageResource> sinonrs = messageResourceService.getCatalogo("CAT_SINONR");
        	mav.addObject("sinonrs",sinonrs);
        	List<MessageResource> lugaresvita = messageResourceService.getCatalogo("CAT_DONDEA");
        	mav.addObject("lugaresvita",lugaresvita);
        	List<MessageResource> hierrotiempos = messageResourceService.getCatalogo("CAT_HIERROTIEMP");
        	mav.addObject("hierrotiempos",hierrotiempos);
        	List<MessageResource> vitatiempos = messageResourceService.getCatalogo("CAT_VITATIEMP");
        	mav.addObject("vitatiempos",vitatiempos);
        	List<MessageResource> lugaresmn = messageResourceService.getCatalogo("CAT_DONDEMN");
        	mav.addObject("lugaresmn",lugaresmn);
        	List<MessageResource> medspar = messageResourceService.getCatalogo("CAT_MEDPAR");
        	mav.addObject("medspar",medspar);
        	List<MessageResource> lugaresmp = messageResourceService.getCatalogo("CAT_DONMEDPAR");
        	mav.addObject("lugaresmp",lugaresmp);
        	List<MessageResource> accionesep = messageResourceService.getCatalogo("CAT_EVITARPAR");
        	mav.addObject("accionesep",accionesep);
        }
        return mav;
    }
    
    
    @RequestMapping(value = "/encuestas/saveSeccionDEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionDEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        
        encuestaBD.setHierron(encuesta.getHierron());
        encuestaBD.setThierround(encuesta.getThierround());
        encuestaBD.setThierrocant(encuesta.getThierrocant());
        encuestaBD.setFhierro(encuesta.getFhierro());
        encuestaBD.setGhierro(encuesta.getGhierro());
        encuestaBD.setDonhierro(encuesta.getDonhierro());
        encuestaBD.setDonhierrobesp(encuesta.getDonhierrobesp());
        encuestaBD.setDonhierrofesp(encuesta.getDonhierrofesp());
        encuestaBD.setFuhierro(encuesta.getFuhierro());
        encuestaBD.setFuhierror(encuesta.getFuhierror());
        encuestaBD.setFauhierror(encuesta.getFauhierror());
        encuestaBD.setNvita(encuesta.getNvita());
        encuestaBD.setNcvita(encuesta.getNcvita());
        encuestaBD.setTvitaund(encuesta.getTvitaund());
        encuestaBD.setTvitacant(encuesta.getTvitacant());
        encuestaBD.setNdvita(encuesta.getNdvita());
        encuestaBD.setNdvitao(encuesta.getNdvitao());
        encuestaBD.setTdvita(encuesta.getTdvita());
        encuestaBD.setFuvita(encuesta.getFuvita());
        encuestaBD.setFauvita(encuesta.getFauvita());
        encuestaBD.setNcnut(encuesta.getNcnut());
        encuestaBD.setNcnutund(encuesta.getNcnutund());
        encuestaBD.setNcnutcant(encuesta.getNcnutcant());
        encuestaBD.setDoncnut(encuesta.getDoncnut());
        encuestaBD.setDoncnutfotro(encuesta.getDoncnutfotro());
        encuestaBD.setParasit(encuesta.getParasit());
        encuestaBD.setCvparas(encuesta.getCvparas());
        encuestaBD.setmParasitario(encuesta.getmParasitario());
        encuestaBD.setOtroMpEsp(encuesta.getOtroMpEsp());
        encuestaBD.setDonMp(encuesta.getDonMp());
        encuestaBD.setOtroDonMp(encuesta.getOtroDonMp());
        encuestaBD.setEvitarParasito(encuesta.getEvitarParasito());
        encuestaBD.setoEvitarParasito(encuesta.getoEvitarParasito());

        
        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    /**
     * Custom handler for editing an encuesta seccion E.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/seccione/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionEEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionE");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> sexos = messageResourceService.getCatalogo("CAT_SEXO");
        	mav.addObject("sexos",sexos);
        	List<MessageResource> sinonas = messageResourceService.getCatalogo("CAT_SINONA");
        	mav.addObject("sinonas",sinonas);
        	List<MessageResource> sinos = messageResourceService.getCatalogo("CAT_SINO");
        	mav.addObject("sinos",sinos);
        	List<MessageResource> nodiopechos = messageResourceService.getCatalogo("CAT_NODIOPECHO");
        	mav.addObject("nodiopechos",nodiopechos);
        	List<MessageResource> tnacpechos = messageResourceService.getCatalogo("CAT_TNACPECHO");
        	mav.addObject("tnacpechos",tnacpechos);
        	List<MessageResource> ttomapechos = messageResourceService.getCatalogo("CAT_TTOMAPECHO");
        	mav.addObject("ttomapechos",ttomapechos);
        	List<MessageResource> sinoavs = messageResourceService.getCatalogo("CAT_SINOAV");
        	mav.addObject("sinoavs",sinoavs);
        	List<MessageResource> tiemplmats = messageResourceService.getCatalogo("CAT_LACTTIEMP");
        	mav.addObject("tiemplmats",tiemplmats);
        	List<MessageResource> tiemppechos = messageResourceService.getCatalogo("CAT_HIERROTIEMP");
        	mav.addObject("tiemppechos",tiemppechos);
        	List<MessageResource> sinonrs = messageResourceService.getCatalogo("CAT_SINONR");
        	mav.addObject("sinonrs",sinonrs);
        	List<MessageResource> bebens = messageResourceService.getCatalogo("CAT_BEBENIN");
        	mav.addObject("bebens",bebens);
        	List<MessageResource> qreupesos = messageResourceService.getCatalogo("CAT_QREUPESO");
        	mav.addObject("qreupesos",qreupesos);
        }
        return mav;
    }
    
    
    @RequestMapping(value = "/encuestas/saveSeccionEEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionEEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setNlactmat(encuesta.getNlactmat());
        encuestaBD.setSexlmat(encuesta.getSexlmat());
        encuestaBD.setEmeseslmat(encuesta.getEmeseslmat());
        encuestaBD.setFnaclmat(encuesta.getFnaclmat());
        encuestaBD.setPecho(encuesta.getPecho());
        encuestaBD.setMotNopecho(encuesta.getMotNopecho());
        encuestaBD.setMotNopechoOtro(encuesta.getMotNopechoOtro());
        encuestaBD.setDapecho(encuesta.getDapecho());
        encuestaBD.setTiempecho(encuesta.getTiempecho());
        encuestaBD.setTiemmama(encuesta.getTiemmama());
        encuestaBD.setTiemmamaMins(encuesta.getTiemmamaMins());
        encuestaBD.setDospechos(encuesta.getDospechos());
        encuestaBD.setVecespechodia(encuesta.getVecespechodia());
        encuestaBD.setVecespechonoche(encuesta.getVecespechonoche());
        encuestaBD.setElmatexcund(encuesta.getElmatexcund());
        encuestaBD.setElmatexccant(encuesta.getElmatexccant());
        encuestaBD.setEdiopechound(encuesta.getEdiopechound());
        encuestaBD.setEdiopechocant(encuesta.getEdiopechocant());
        encuestaBD.setCombeb(encuesta.getCombeb());
        encuestaBD.setEalimund(encuesta.getEalimund());
        encuestaBD.setEalimcant(encuesta.getEalimcant());
        encuestaBD.setBebeLiq(encuesta.getBebeLiq());
        encuestaBD.setReunionPeso(encuesta.getReunionPeso());
        encuestaBD.setQuienReunionPeso(encuesta.getQuienReunionPeso());
        encuestaBD.setQuienReunionPesoOtro(encuesta.getQuienReunionPesoOtro());
        encuestaBD.setAssitioReunionPeso(encuesta.getAssitioReunionPeso());

        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta seccion F.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/seccionf/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionFEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionF");
        	mav.addObject("encuesta",encuesta);
        }
        return mav;
    }
    
    @RequestMapping(value = "/encuestas/saveSeccionFEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionFEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setPesoEnt1(encuesta.getPesoEnt1());
        encuestaBD.setPesoEnt2(encuesta.getPesoEnt2());
        encuestaBD.setTallaEnt1(encuesta.getTallaEnt1());
        encuestaBD.setTallaEnt2(encuesta.getTallaEnt2());
        encuestaBD.setPesoNin1(encuesta.getPesoNin1());
        encuestaBD.setPesoNin2(encuesta.getPesoNin2());
        encuestaBD.setLongNin1(encuesta.getLongNin1());
        encuestaBD.setLongNin2(encuesta.getLongNin2());
        encuestaBD.setTallaNin1(encuesta.getTallaNin1());
        encuestaBD.setTallaNin2(encuesta.getTallaNin2());

        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    
    /**
     * Custom handler for editing an encuesta seccion G.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/secciong/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionGEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionG");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> sinonas = messageResourceService.getCatalogo("CAT_SINONA");
        	mav.addObject("sinonas",sinonas);
        	List<MessageResource> sinos = messageResourceService.getCatalogo("CAT_SINO");
        	mav.addObject("sinos",sinos);
        }
        return mav;
    }
    
    @RequestMapping(value = "/encuestas/saveSeccionGEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionGEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setMsEnt(encuesta.getMsEnt());
        encuestaBD.setCodMsEnt(encuesta.getCodMsEnt());
        encuestaBD.setHbEnt(encuesta.getHbEnt());
        encuestaBD.setMsNin(encuesta.getMsNin());
        encuestaBD.setCodMsNin(encuesta.getCodMsNin());
        encuestaBD.setHbNin(encuesta.getHbNin());
        encuestaBD.setMoEnt(encuesta.getMoEnt());
        encuestaBD.setCodMoEnt(encuesta.getCodMoEnt());
        encuestaBD.setPan(encuesta.getPan());
        encuestaBD.setSal(encuesta.getSal());
        encuestaBD.setMarcaSal(encuesta.getMarcaSal());
        encuestaBD.setAzucar(encuesta.getAzucar());
        encuestaBD.setMarcaAzucar(encuesta.getMarcaAzucar());

        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    /**
     * Custom handler for editing an encuesta seccion H.
     *
     * @param ident the ID of the encuesta to edit
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/encuestas/editEncuesta/seccionh/{ident}/", method = RequestMethod.GET)
    public ModelAndView editSeccionHEncuesta(@PathVariable("ident") String ident) {
    	ModelAndView mav;
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
        if(encuesta==null){
        	mav = new ModelAndView("403");
        }
        else{
        	mav = new ModelAndView("super/editSeccionH");
        	mav.addObject("encuesta",encuesta);
        	List<MessageResource> sinos = messageResourceService.getCatalogo("CAT_SINO");
        	mav.addObject("sinos",sinos);
        	List<MessageResource> frecscon = messageResourceService.getCatalogo("CAT_FRECCON");
        	mav.addObject("frecscon",frecscon);
        }
        return mav;
    }
    
    @RequestMapping(value = "/encuestas/saveSeccionHEncuesta/", method = RequestMethod.POST)
    public  @ResponseBody ModelAndView saveSeccionHEncuesta(@Valid @ModelAttribute Encuesta encuesta, 
      BindingResult result) {
    	ModelAndView mav;
    	if (result.hasErrors()) {
    		mav = new ModelAndView("404");
        }
        Encuesta encuestaBD = encuestaService.getEncuesta(encuesta.getIdent());
        encuestaBD.setPatConsAzuc(encuesta.getPatConsAzuc());
        encuestaBD.setPatConsAzucFrec(encuesta.getPatConsAzucFrec());
        encuestaBD.setPatConsSal(encuesta.getPatConsSal());
        encuestaBD.setPatConsSalFrec(encuesta.getPatConsSalFrec());
        encuestaBD.setPatConsArroz(encuesta.getPatConsArroz());
        encuestaBD.setPatConsArrozFrec(encuesta.getPatConsArrozFrec());
        encuestaBD.setPatConsAcei(encuesta.getPatConsAcei());
        encuestaBD.setPatConsAceiFrec(encuesta.getPatConsAceiFrec());
        encuestaBD.setPatConsFri(encuesta.getPatConsFri());
        encuestaBD.setPatConsFriFrec(encuesta.getPatConsFriFrec());
        encuestaBD.setPatConsCebo(encuesta.getPatConsCebo());
        encuestaBD.setPatConsCeboFrec(encuesta.getPatConsCeboFrec());
        encuestaBD.setPatConsChi(encuesta.getPatConsChi());
        encuestaBD.setPatConsChiFrec(encuesta.getPatConsChiFrec());
        encuestaBD.setPatConsQue(encuesta.getPatConsQue());
        encuestaBD.setPatConsQueFrec(encuesta.getPatConsQueFrec());
        encuestaBD.setPatConsCafe(encuesta.getPatConsCafe());
        encuestaBD.setPatConsCafeFrec(encuesta.getPatConsCafeFrec());
        encuestaBD.setPatConsTor(encuesta.getPatConsTor());
        encuestaBD.setPatConsTorFrec(encuesta.getPatConsTorFrec());
        encuestaBD.setPatConsCar(encuesta.getPatConsCar());
        encuestaBD.setPatConsCarFrec(encuesta.getPatConsCarFrec());
        encuestaBD.setPatConsHue(encuesta.getPatConsHue());
        encuestaBD.setPatConsHueFrec(encuesta.getPatConsHueFrec());
        encuestaBD.setPatConsPan(encuesta.getPatConsPan());
        encuestaBD.setPatConsPanFrec(encuesta.getPatConsPanFrec());
        encuestaBD.setPatConsBan(encuesta.getPatConsBan());
        encuestaBD.setPatConsBanFrec(encuesta.getPatConsBanFrec());
        encuestaBD.setPatConsPanDul(encuesta.getPatConsPanDul());
        encuestaBD.setPatConsPanDulFrec(encuesta.getPatConsPanDulFrec());
        encuestaBD.setPatConsPla(encuesta.getPatConsPla());
        encuestaBD.setPatConsPlaFrec(encuesta.getPatConsPlaFrec());
        encuestaBD.setPatConsPapa(encuesta.getPatConsPapa());
        encuestaBD.setPatConsPapaFrec(encuesta.getPatConsPapaFrec());
        encuestaBD.setPatConsLec(encuesta.getPatConsLec());
        encuestaBD.setPatConsLecFrec(encuesta.getPatConsLecFrec());
        encuestaBD.setPatConsSalTom(encuesta.getPatConsSalTom());
        encuestaBD.setPatConsSalTomFrec(encuesta.getPatConsSalTomFrec());
        encuestaBD.setPatConsGas(encuesta.getPatConsGas());
        encuestaBD.setPatConsGasFrec(encuesta.getPatConsGasFrec());
        encuestaBD.setPatConsCarRes(encuesta.getPatConsCarRes());
        encuestaBD.setPatConsCarResFrec(encuesta.getPatConsCarResFrec());
        encuestaBD.setPatConsAvena(encuesta.getPatConsAvena());
        encuestaBD.setPatConsAvenaFrec(encuesta.getPatConsAvenaFrec());
        encuestaBD.setPatConsNaran(encuesta.getPatConsNaran());
        encuestaBD.setPatConsNaranFrec(encuesta.getPatConsNaranFrec());
        encuestaBD.setPatConsPasta(encuesta.getPatConsPasta());
        encuestaBD.setPatConsPastaFrec(encuesta.getPatConsPastaFrec());
        encuestaBD.setPatConsAyote(encuesta.getPatConsAyote());
        encuestaBD.setPatConsAyoteFrec(encuesta.getPatConsAyoteFrec());
        encuestaBD.setPatConsMagg(encuesta.getPatConsMagg());
        encuestaBD.setPatConsMaggFrec(encuesta.getPatConsMaggFrec());
        encuestaBD.setPatConsFrut(encuesta.getPatConsFrut());
        encuestaBD.setPatConsFrutFrec(encuesta.getPatConsFrutFrec());
        encuestaBD.setPatConsRaic(encuesta.getPatConsRaic());
        encuestaBD.setPatConsRaicFrec(encuesta.getPatConsRaicFrec());
        encuestaBD.setPatConsMenei(encuesta.getPatConsMenei());
        encuestaBD.setPatConsMeneiFrec(encuesta.getPatConsMeneiFrec());
        encuestaBD.setPatConsRepollo(encuesta.getPatConsRepollo());
        encuestaBD.setPatConsRepolloFrec(encuesta.getPatConsRepolloFrec());
        encuestaBD.setPatConsZana(encuesta.getPatConsZana());
        encuestaBD.setPatConsZanaFrec(encuesta.getPatConsZanaFrec());
        encuestaBD.setPatConsPinolillo(encuesta.getPatConsPinolillo());
        encuestaBD.setPatConsPinolilloFrec(encuesta.getPatConsPinolilloFrec());
        encuestaBD.setPatConsOVerd(encuesta.getPatConsOVerd());
        encuestaBD.setPatConsOVerdFrec(encuesta.getPatConsOVerdFrec());
        encuestaBD.setPatConsPesc(encuesta.getPatConsPesc());
        encuestaBD.setPatConsPescFrec(encuesta.getPatConsPescFrec());
        encuestaBD.setPatConsAlimComp(encuesta.getPatConsAlimComp());
        encuestaBD.setPatConsAlimCompFrec(encuesta.getPatConsAlimCompFrec());
        encuestaBD.setPatConsLecPol(encuesta.getPatConsLecPol());
        encuestaBD.setPatConsLecPolFrec(encuesta.getPatConsLecPolFrec());
        encuestaBD.setPatConsCarCer(encuesta.getPatConsCarCer());
        encuestaBD.setPatConsCarCerFrec(encuesta.getPatConsCarCerFrec());
        encuestaBD.setPatConsEmb(encuesta.getPatConsEmb());
        encuestaBD.setPatConsEmbFrec(encuesta.getPatConsEmbFrec());
        encuestaBD.setPatConsMar(encuesta.getPatConsMar());
        encuestaBD.setPatConsMarFrec(encuesta.getPatConsMarFrec());
        encuestaBD.setPatConsCarCaza(encuesta.getPatConsCarCaza());
        encuestaBD.setPatConsCarCazaFrec(encuesta.getPatConsCarCazaFrec());

        encuestaService.saveEncuesta(encuestaBD);
        mav = new ModelAndView("super/terminarEncuesta");
    	mav.addObject("encuesta",encuestaBD);
        return mav;
    }
    
    /**
     * Custom handler for disabling an encuesta.
     *
     * @param ident the ID of the encuesta to disable
     * @param redirectAttributes Regresa codigo de la encuesta
     * @return a String
     */
    @RequestMapping("/desEncuesta/{ident}/")
    public String disableEncuesta(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
		Encuesta encuesta = this.encuestaService.getEncuesta(ident);
    	if(encuesta!=null){
    		encuesta.setPasive('1');
    		this.encuestaService.saveEncuesta(encuesta);
    		redirectAttributes.addFlashAttribute("encuestaDeshabilitada", true);
    		redirectAttributes.addFlashAttribute("codigoEncuesta", encuesta.getCodigo());
    		redirecTo = "redirect:/super/encuestas/{ident}/";
    	}
    	else{
    		redirecTo = "403";
    	}
    	return redirecTo;	
    }
    
    
    /**
     * Custom handler for enabling an encuesta.
     *
     * @param ident the ID of the encuesta to enable
     * @param redirectAttributes Regresa codigo de encuesta
     * @return a String
     */
    @RequestMapping("/habEncuesta/{ident}/")
    public String enableEncuesta(@PathVariable("ident") String ident, 
    		RedirectAttributes redirectAttributes) {
    	String redirecTo="404";
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
    	if(encuesta!=null){
    		encuesta.setPasive('0');
    		this.encuestaService.saveEncuesta(encuesta);
    		redirectAttributes.addFlashAttribute("encuestaHabilitada", true);
    		redirectAttributes.addFlashAttribute("codigoEncuesta", encuesta.getCodigo());
    		redirecTo = "redirect:/super/encuestas/{ident}/";
    	}
    	else{
    		redirecTo = "403";
    	}
    	return redirecTo;	
    }
    
	/**
     * Custom handler for supervising an encuesta.
     * @param model Modelo enlazado a la vista
     * @param ident the ID of the encuestador to supervise
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping(value = "/supEncuesta/{ident}/", method = RequestMethod.GET)
	public String initUpdateEncuestaForm(@PathVariable("ident") String ident, Model model) {
    	Encuesta encuesta = this.encuestaService.getEncuesta(ident);
		if(encuesta!=null){
			model.addAttribute("encuesta",encuesta);
			List<Encuestador> encuestadores = encuestadorService.getEncuestadores();
			model.addAttribute("encuestadores",encuestadores);
        	List<Supervisor> supervisores = supervisorService.getSupervisores();
        	model.addAttribute("supervisores",supervisores);
			return "super/supervisarEncuesta";
		}
		else{
			return "403";
		}
	}
    
    /**
     * Custom handler for saving an encuesta.
     * 
     * @param ident Identificador unico
     * @param encuestador codigo del encuestador
     * @param supervisor nombre del supervisor
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping( value="/saveEncuesta/", method=RequestMethod.POST)
	public ResponseEntity<String> processUpdateEncuestaForm( @RequestParam(value="ident", required=false, defaultValue="" ) String ident
	        , @RequestParam( value="encuestador", required=true ) String encuestador
	        , @RequestParam( value="supervisor", required=true ) String supervisor
	        )
	{
    	try{
			Encuesta encuesta = encuestaService.getEncuesta(ident);
			Encuestador encuest = encuestadorService.getEncuestador(encuestador);
			Supervisor superv = supervisorService.getSupervisor(supervisor);
			encuesta.setEncuestador(encuest);
			encuesta.setSupervisor(superv);
			encuestaService.saveEncuesta(encuesta);
			return createJsonResponse(encuesta);
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
    
    private ResponseEntity<String> createJsonResponse( Object o )
	{
	    HttpHeaders headers = new HttpHeaders();
	    headers.set("Content-Type", "application/json");
	    Gson gson = new Gson();
	    String json = gson.toJson(o);
	    return new ResponseEntity<String>( json, headers, HttpStatus.CREATED );
	}
    
}
