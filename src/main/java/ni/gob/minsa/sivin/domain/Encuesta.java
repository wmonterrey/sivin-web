package ni.gob.minsa.sivin.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.ForeignKey;

import ni.gob.minsa.sivin.domain.audit.Auditable;

/**
 * Encuesta es la clase que representa el registro de una encuesta.<br><br>
 * 
 * Nombre de la tabla<br>
 * Table(name = "encuesta", catalog = "sivin", uniqueConstraints={UniqueConstraint((columnNames = {"codigo","pasivo"})})<br><br>
 * 
 * Encuesta se relaciona con:
 * 
 * <ul>
 * <li>Segmento
 * <li>Encuestador
 * <li>Supervisor
 * </ul>
 * 
 *  
 * @author      William Avilés
 * @version     1.0
 * @since       1.0
 */
@Entity
@Table(name = "encuesta", catalog = "sivin", uniqueConstraints={@UniqueConstraint(columnNames = {"codigo","pasivo"})})
public class Encuesta extends BaseMetaData implements Auditable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ident;
	private String codigo;
	private Segmento segmento;
	private Integer numEncuesta;
	private Date fechaEntrevista;
	private String jefeFamilia;
	private String sexJefeFamilia;
	private Integer numPersonas;
	private Encuestador encuestador;
	private Supervisor supervisor;
	//Seccion A
	private String agua;
	private String oagua;
	private Integer cuartos;
	private String lugNecesidades;
	private String olugNecesidades;
	private String usaCocinar;
	private String ousaCocinar;
	private String articulos;
	private String oarticulos;
	//SECCION B
	private String conoceFNac;
	private Date fnacEnt;
	private String edadEnt;
	private String leerEnt;
	private String escribirEnt;
	private String leeescEnt;
	private String nivelEnt;
	private String gradoEnt;
	private String entRealizada;
	private String entEmb;
	private String entDioluz;
	private String entHieacfol;
	private String entMeseshierro;
	private String entRecHierro;
	private String entORecHierro;
	private String tiemHierroUnd;
	private String tiemHierro;
	private String dondeHierro;
	private String dondeHierroBesp;
	private String dondeHierroFesp;
	private String tomadoHierro;
	private String vita;
	private String tiempVita;
	private String evitaEmb;
	private String dondeAntic;
	private String nuevoEmb;
	private String hierro;
	private String dHierro;
	//SECCION C
	private String numNinos;
	private String n1;
	private String n2;
	private String n3;
	private String n4;
	private String n5;
	private String n6;
	private String e1;
	private String e2;
	private String e3;
	private String e4;
	private String e5;
	private String e6;
	private String nselec;
	private String nomselec;
	private Date fnacselec;
	private String eselect;
	private String sexselec;
	private String calim;
	private String vcome;
	private String consalim;
	private String calimenf;
	private String clecheenf;
	//SECCION D
	private String hierron;
	private String thierround;
	private String thierrocant;
	private String fhierro;
	private String ghierro;
	private String donhierro;
	private String donhierrobesp;
	private String donhierrofesp;
	private String fuhierro;
	private Date fuhierror;
	private Date fauhierror;
	private String nvita;
	private String ncvita;
	private String tvitaund;
	private String tvitacant;
	private String ndvita;
	private String ndvitao;
	private String tdvita;
	private Date fuvita;
	private Date fauvita;
	private String ncnut;
	private String ncnutund;
	private String ncnutcant;
	private String doncnut;
	private String doncnutfotro;
	private String parasit;
	private String cvparas;
	private String mParasitario;
	private String otroMpEsp;
	private String donMp;
	private String otroDonMp;
	private String evitarParasito;
	private String oEvitarParasito;
	//SECCION E
	private String nlactmat;
	private String sexlmat;
	private String emeseslmat;
	private Date fnaclmat;
	private String pecho;
	private String motNopecho;
	private String motNopechoOtro;
	private String dapecho;
	private String tiempecho;
	private String tiemmama;
	private String tiemmamaMins;
	private String dospechos;
	private String vecespechodia;
	private String vecespechonoche;
	private String elmatexcund;
	private String elmatexccant;
	private String ediopechound;
	private String ediopechocant;
	private String combeb;
	private String ealimund;
	private String ealimcant;
	private String bebeLiq;
	private String reunionPeso;
	private String quienReunionPeso;
	private String quienReunionPesoOtro;
	private String assitioReunionPeso;
	
	//SECCION F
	private Float pesoEnt1;
	private Float pesoEnt2;
	private Float tallaEnt1;
	private Float tallaEnt2;
	private Float pesoNin1;
	private Float pesoNin2;
	private Float longNin1;
	private Float longNin2;
	private Float tallaNin1;
	private Float tallaNin2;
	// SECCION G
	private String msEnt;
	private Float hbEnt;
	private String msNin;
	private Float hbNin;
	private String moEnt;
	private String pan;
	private String sal;
	private String marcaSal;
	private String azucar;
	private String marcaAzucar;
	// SECCION H
	private String patConsAzuc;
	private String patConsAzucFrec;
	private String patConsSal;
	private String patConsSalFrec;
	private String patConsArroz;
	private String patConsArrozFrec;
	private String patConsAcei;
	private String patConsAceiFrec;
	private String patConsFri;
	private String patConsFriFrec;
	private String patConsCebo;
	private String patConsCeboFrec;
	private String patConsChi;
	private String patConsChiFrec;
	private String patConsQue;
	private String patConsQueFrec;
	private String patConsCafe;
	private String patConsCafeFrec;
	private String patConsTor;
	private String patConsTorFrec;
	private String patConsCar;
	private String patConsCarFrec;
	private String patConsHue;
	private String patConsHueFrec;
	private String patConsPan;
	private String patConsPanFrec;
	private String patConsBan;
	private String patConsBanFrec;
	private String patConsPanDul;
	private String patConsPanDulFrec;
	private String patConsPla;
	private String patConsPlaFrec;
	private String patConsPapa;
	private String patConsPapaFrec;
	private String patConsLec;
	private String patConsLecFrec;
	private String patConsSalTom;
	private String patConsSalTomFrec;
	private String patConsGas;
	private String patConsGasFrec;
	private String patConsCarRes;
	private String patConsCarResFrec;
	private String patConsAvena;
	private String patConsAvenaFrec;
	private String patConsNaran;
	private String patConsNaranFrec;
	private String patConsPasta;
	private String patConsPastaFrec;
	private String patConsAyote;
	private String patConsAyoteFrec;
	private String patConsMagg;
	private String patConsMaggFrec;
	private String patConsFrut;
	private String patConsFrutFrec;
	private String patConsRaic;
	private String patConsRaicFrec;
	private String patConsMenei;
	private String patConsMeneiFrec;
	private String patConsZana;
	private String patConsZanaFrec;
	private String patConsPinolillo;
	private String patConsPinolilloFrec;
	private String patConsOVerd;
	private String patConsOVerdFrec;
	private String patConsPesc;
	private String patConsPescFrec;
	private String patConsAlimComp;
	private String patConsAlimCompFrec;
	private String patConsLecPol;
	private String patConsLecPolFrec;
	private String patConsCarCer;
	private String patConsCarCerFrec;
	private String patConsEmb;
	private String patConsEmbFrec;
	private String patConsMar;
	private String patConsMarFrec;
	private String patConsCarCaza;
	private String patConsCarCazaFrec;
	
	public Encuesta() {
		super();
	}

	@Id
    @Column(name = "identificador", nullable = false, length = 50)
	public String getIdent() {
		return ident;
	}

	public void setIdent(String ident) {
		this.ident = ident;
	}

	@Column(name = "codigo", nullable = false, length = 50)
	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	@ManyToOne
	@JoinColumn(name="segmento", updatable = false)
    @ForeignKey(name = "FK_SEGMENTO_ENCUESTA")
	public Segmento getSegmento() {
		return segmento;
	}

	public void setSegmento(Segmento segmento) {
		this.segmento = segmento;
	}
	
	
	@ManyToOne
	@JoinColumn(name="encuestador", updatable = false)
    @ForeignKey(name = "FK_ENCUESTADOR_ENCUESTA")
	public Encuestador getEncuestador() {
		return encuestador;
	}

	public void setEncuestador(Encuestador encuestador) {
		this.encuestador = encuestador;
	}

	@ManyToOne
	@JoinColumn(name="supervisor", updatable = false)
    @ForeignKey(name = "FK_SUPERVISOR_ENCUESTA")
	public Supervisor getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(Supervisor supervisor) {
		this.supervisor = supervisor;
	}

	@Column(name = "numEncuesta", nullable = false)
	public Integer getNumEncuesta() {
		return numEncuesta;
	}

	public void setNumEncuesta(Integer numEncuesta) {
		this.numEncuesta = numEncuesta;
	}

	@Column(name = "fechaEntrevista", nullable = false)
	public Date getFechaEntrevista() {
		return fechaEntrevista;
	}

	public void setFechaEntrevista(Date fechaEntrevista) {
		this.fechaEntrevista = fechaEntrevista;
	}

	@Column(name = "jefeFamilia", nullable = false, length = 250)
	public String getJefeFamilia() {
		return jefeFamilia;
	}

	public void setJefeFamilia(String jefeFamilia) {
		this.jefeFamilia = jefeFamilia;
	}

	@Column(name = "sexJefeFamilia", nullable = false, length = 5)
	public String getSexJefeFamilia() {
		return sexJefeFamilia;
	}

	public void setSexJefeFamilia(String sexJefeFamilia) {
		this.sexJefeFamilia = sexJefeFamilia;
	}

	@Column(name = "numPersonas", nullable = false, length = 2)
	public Integer getNumPersonas() {
		return numPersonas;
	}

	public void setNumPersonas(Integer numPersonas) {
		this.numPersonas = numPersonas;
	}
	
	

	@Column(name = "agua", nullable = true, length = 2)
	public String getAgua() {
		return agua;
	}

	public void setAgua(String agua) {
		this.agua = agua;
	}

	@Column(name = "oagua", nullable = true, length = 255)
	public String getOagua() {
		return oagua;
	}

	public void setOagua(String oagua) {
		this.oagua = oagua;
	}

	@Column(name = "cuartos", nullable = true)
	public Integer getCuartos() {
		return cuartos;
	}

	public void setCuartos(Integer cuartos) {
		this.cuartos = cuartos;
	}

	@Column(name = "lugnecesidades", nullable = true, length = 2)
	public String getLugNecesidades() {
		return lugNecesidades;
	}

	public void setLugNecesidades(String lugNecesidades) {
		this.lugNecesidades = lugNecesidades;
	}

	@Column(name = "olugnecesidades", nullable = true, length = 255)
	public String getOlugNecesidades() {
		return olugNecesidades;
	}

	public void setOlugNecesidades(String olugNecesidades) {
		this.olugNecesidades = olugNecesidades;
	}

	@Column(name = "usacocinar", nullable = true, length = 2)
	public String getUsaCocinar() {
		return usaCocinar;
	}

	public void setUsaCocinar(String usaCocinar) {
		this.usaCocinar = usaCocinar;
	}

	@Column(name = "ousacocinar", nullable = true, length = 255)
	public String getOusaCocinar() {
		return ousaCocinar;
	}

	public void setOusaCocinar(String ousaCocinar) {
		this.ousaCocinar = ousaCocinar;
	}

	@Column(name = "articulos", nullable = true, length = 25)
	public String getArticulos() {
		return articulos;
	}

	public void setArticulos(String articulos) {
		this.articulos = articulos;
	}

	@Column(name = "oarticulos", nullable = true, length = 255)
	public String getOarticulos() {
		return oarticulos;
	}

	public void setOarticulos(String oarticulos) {
		this.oarticulos = oarticulos;
	}

	@Column(name = "conocefnac", nullable = true, length = 1)
	public String getConoceFNac() {
		return conoceFNac;
	}

	public void setConoceFNac(String conoceFNac) {
		this.conoceFNac = conoceFNac;
	}

	@Column(name = "fnacnet", nullable = true)
	public Date getFnacEnt() {
		return fnacEnt;
	}

	public void setFnacEnt(Date fnacEnt) {
		this.fnacEnt = fnacEnt;
	}

	@Column(name = "edadent", nullable = true, length = 2)
	public String getEdadEnt() {
		return edadEnt;
	}

	public void setEdadEnt(String edadEnt) {
		this.edadEnt = edadEnt;
	}

	@Column(name = "leerent", nullable = true, length = 1)
	public String getLeerEnt() {
		return leerEnt;
	}

	public void setLeerEnt(String leerEnt) {
		this.leerEnt = leerEnt;
	}

	@Column(name = "escribirent", nullable = true, length = 1)
	public String getEscribirEnt() {
		return escribirEnt;
	}

	public void setEscribirEnt(String escribirEnt) {
		this.escribirEnt = escribirEnt;
	}

	@Column(name = "leeescent", nullable = true, length = 1)
	public String getLeeescEnt() {
		return leeescEnt;
	}

	public void setLeeescEnt(String leeescEnt) {
		this.leeescEnt = leeescEnt;
	}

	@Column(name = "nivelent", nullable = true, length = 1)
	public String getNivelEnt() {
		return nivelEnt;
	}

	public void setNivelEnt(String nivelEnt) {
		this.nivelEnt = nivelEnt;
	}

	@Column(name = "gradoent", nullable = true, length = 1)
	public String getGradoEnt() {
		return gradoEnt;
	}

	public void setGradoEnt(String gradoEnt) {
		this.gradoEnt = gradoEnt;
	}

	@Column(name = "entrealizada", nullable = true, length = 1)
	public String getEntRealizada() {
		return entRealizada;
	}

	public void setEntRealizada(String entRealizada) {
		this.entRealizada = entRealizada;
	}

	@Column(name = "entemb", nullable = true, length = 1)
	public String getEntEmb() {
		return entEmb;
	}

	public void setEntEmb(String entEmb) {
		this.entEmb = entEmb;
	}

	@Column(name = "entdiozuz", nullable = true, length = 1)
	public String getEntDioluz() {
		return entDioluz;
	}

	public void setEntDioluz(String entDioluz) {
		this.entDioluz = entDioluz;
	}

	@Column(name = "enthieacfol", nullable = true, length = 1)
	public String getEntHieacfol() {
		return entHieacfol;
	}

	public void setEntHieacfol(String entHieacfol) {
		this.entHieacfol = entHieacfol;
	}

	@Column(name = "entmeseshierro", nullable = true, length = 2)
	public String getEntMeseshierro() {
		return entMeseshierro;
	}

	public void setEntMeseshierro(String entMeseshierro) {
		this.entMeseshierro = entMeseshierro;
	}

	@Column(name = "entrechierro", nullable = true, length = 1)
	public String getEntRecHierro() {
		return entRecHierro;
	}

	public void setEntRecHierro(String entRecHierro) {
		this.entRecHierro = entRecHierro;
	}
	
	@Column(name = "entorechierro", nullable = true, length = 155)
	public String getEntORecHierro() {
		return entORecHierro;
	}

	public void setEntORecHierro(String entORecHierro) {
		this.entORecHierro = entORecHierro;
	}

	@Column(name = "tiemhierround", nullable = true, length = 1)
	public String getTiemHierroUnd() {
		return tiemHierroUnd;
	}

	public void setTiemHierroUnd(String tiemHierroUnd) {
		this.tiemHierroUnd = tiemHierroUnd;
	}

	@Column(name = "tiemhierro", nullable = true, length = 2)
	public String getTiemHierro() {
		return tiemHierro;
	}

	public void setTiemHierro(String tiemHierro) {
		this.tiemHierro = tiemHierro;
	}
	
	
	@Column(name = "dondehierro", nullable = true, length = 25)
	public String getDondeHierro() {
		return dondeHierro;
	}

	public void setDondeHierro(String dondeHierro) {
		this.dondeHierro = dondeHierro;
	}

	@Column(name = "dondehierrobesp", nullable = true, length = 255)
	public String getDondeHierroBesp() {
		return dondeHierroBesp;
	}

	public void setDondeHierroBesp(String dondeHierroBesp) {
		this.dondeHierroBesp = dondeHierroBesp;
	}

	@Column(name = "dondehierrofesp", nullable = true, length = 255)
	public String getDondeHierroFesp() {
		return dondeHierroFesp;
	}

	public void setDondeHierroFesp(String dondeHierroFesp) {
		this.dondeHierroFesp = dondeHierroFesp;
	}

	@Column(name = "tomadohierro", nullable = true, length = 1)
	public String getTomadoHierro() {
		return tomadoHierro;
	}

	public void setTomadoHierro(String tomadoHierro) {
		this.tomadoHierro = tomadoHierro;
	}

	@Column(name = "vita", nullable = true, length = 1)
	public String getVita() {
		return vita;
	}

	public void setVita(String vita) {
		this.vita = vita;
	}

	@Column(name = "tiempvita", nullable = true, length = 1)
	public String getTiempVita() {
		return tiempVita;
	}

	public void setTiempVita(String tiempVita) {
		this.tiempVita = tiempVita;
	}

	@Column(name = "evitaemb", nullable = true, length = 2)
	public String getEvitaEmb() {
		return evitaEmb;
	}

	public void setEvitaEmb(String evitaEmb) {
		this.evitaEmb = evitaEmb;
	}

	@Column(name = "dondeantic", nullable = true, length = 1)
	public String getDondeAntic() {
		return dondeAntic;
	}

	public void setDondeAntic(String dondeAntic) {
		this.dondeAntic = dondeAntic;
	}

	@Column(name = "nuevoemb", nullable = true, length = 1)
	public String getNuevoEmb() {
		return nuevoEmb;
	}

	public void setNuevoEmb(String nuevoEmb) {
		this.nuevoEmb = nuevoEmb;
	}

	@Column(name = "hierro", nullable = true, length = 1)
	public String getHierro() {
		return hierro;
	}

	public void setHierro(String hierro) {
		this.hierro = hierro;
	}

	@Column(name = "dhierro", nullable = true, length = 1)
	public String getdHierro() {
		return dHierro;
	}

	public void setdHierro(String dHierro) {
		this.dHierro = dHierro;
	}
	
	
	@Column(name = "numNinos", nullable = true, length = 1)
	public String getNumNinos() {
		return numNinos;
	}

	public void setNumNinos(String numNinos) {
		this.numNinos = numNinos;
	}

	@Column(name = "n1", nullable = true, length = 100)
	public String getN1() {
		return n1;
	}

	public void setN1(String n1) {
		this.n1 = n1;
	}

	@Column(name = "n2", nullable = true, length = 100)
	public String getN2() {
		return n2;
	}

	public void setN2(String n2) {
		this.n2 = n2;
	}

	@Column(name = "n3", nullable = true, length = 100)
	public String getN3() {
		return n3;
	}

	public void setN3(String n3) {
		this.n3 = n3;
	}

	@Column(name = "n4", nullable = true, length = 100)
	public String getN4() {
		return n4;
	}

	public void setN4(String n4) {
		this.n4 = n4;
	}

	@Column(name = "n5", nullable = true, length = 100)
	public String getN5() {
		return n5;
	}

	public void setN5(String n5) {
		this.n5 = n5;
	}

	@Column(name = "n6", nullable = true, length = 100)
	public String getN6() {
		return n6;
	}

	public void setN6(String n6) {
		this.n6 = n6;
	}

	@Column(name = "e1", nullable = true, length = 2)
	public String getE1() {
		return e1;
	}

	public void setE1(String e1) {
		this.e1 = e1;
	}

	@Column(name = "e2", nullable = true, length = 2)
	public String getE2() {
		return e2;
	}

	public void setE2(String e2) {
		this.e2 = e2;
	}

	@Column(name = "e3", nullable = true, length = 2)
	public String getE3() {
		return e3;
	}

	public void setE3(String e3) {
		this.e3 = e3;
	}

	@Column(name = "e4", nullable = true, length = 2)
	public String getE4() {
		return e4;
	}

	public void setE4(String e4) {
		this.e4 = e4;
	}

	@Column(name = "e5", nullable = true, length = 2)
	public String getE5() {
		return e5;
	}

	public void setE5(String e5) {
		this.e5 = e5;
	}
	
	@Column(name = "e6", nullable = true, length = 2)
	public String getE6() {
		return e6;
	}

	public void setE6(String e6) {
		this.e6 = e6;
	}

	@Column(name = "nselect", nullable = true, length = 1)
	public String getNselec() {
		return nselec;
	}

	public void setNselec(String nselec) {
		this.nselec = nselec;
	}

	@Column(name = "nomselec", nullable = true, length = 100)
	public String getNomselec() {
		return nomselec;
	}

	public void setNomselec(String nomselec) {
		this.nomselec = nomselec;
	}

	@Column(name = "fnacselec", nullable = true)
	public Date getFnacselec() {
		return fnacselec;
	}

	public void setFnacselec(Date fnacselec) {
		this.fnacselec = fnacselec;
	}

	@Column(name = "eselect", nullable = true, length = 2)
	public String getEselect() {
		return eselect;
	}

	public void setEselect(String eselect) {
		this.eselect = eselect;
	}

	@Column(name = "sexselec", nullable = true, length = 1)
	public String getSexselec() {
		return sexselec;
	}

	public void setSexselec(String sexselec) {
		this.sexselec = sexselec;
	}

	@Column(name = "calim", nullable = true, length = 1)
	public String getCalim() {
		return calim;
	}

	public void setCalim(String calim) {
		this.calim = calim;
	}

	@Column(name = "vcome", nullable = true, length = 2)
	public String getVcome() {
		return vcome;
	}

	public void setVcome(String vcome) {
		this.vcome = vcome;
	}

	@Column(name = "consalim", nullable = true, length = 1)
	public String getConsalim() {
		return consalim;
	}

	public void setConsalim(String consalim) {
		this.consalim = consalim;
	}

	@Column(name = "calimenf", nullable = true, length = 1)
	public String getCalimenf() {
		return calimenf;
	}

	public void setCalimenf(String calimenf) {
		this.calimenf = calimenf;
	}

	@Column(name = "clecheenf", nullable = true, length = 1)
	public String getClecheenf() {
		return clecheenf;
	}

	public void setClecheenf(String clecheenf) {
		this.clecheenf = clecheenf;
	}
	
	@Column(name = "hierron", nullable = true, length = 1)
	public String getHierron() {
		return hierron;
	}

	public void setHierron(String hierron) {
		this.hierron = hierron;
	}

	@Column(name = "thierround", nullable = true, length = 1)
	public String getThierround() {
		return thierround;
	}

	public void setThierround(String thierround) {
		this.thierround = thierround;
	}

	@Column(name = "thierrocant", nullable = true, length = 2)
	public String getThierrocant() {
		return thierrocant;
	}

	public void setThierrocant(String thierrocant) {
		this.thierrocant = thierrocant;
	}

	@Column(name = "fhierro", nullable = true, length = 2)
	public String getFhierro() {
		return fhierro;
	}

	public void setFhierro(String fhierro) {
		this.fhierro = fhierro;
	}

	@Column(name = "ghierro", nullable = true, length = 1)
	public String getGhierro() {
		return ghierro;
	}

	public void setGhierro(String ghierro) {
		this.ghierro = ghierro;
	}

	@Column(name = "donhierro", nullable = true, length = 25)
	public String getDonhierro() {
		return donhierro;
	}

	public void setDonhierro(String donhierro) {
		this.donhierro = donhierro;
	}

	@Column(name = "donhierrobesp", nullable = true, length = 255)
	public String getDonhierrobesp() {
		return donhierrobesp;
	}

	public void setDonhierrobesp(String donhierrobesp) {
		this.donhierrobesp = donhierrobesp;
	}

	@Column(name = "donhierrofesp", nullable = true, length = 255)
	public String getDonhierrofesp() {
		return donhierrofesp;
	}

	public void setDonhierrofesp(String donhierrofesp) {
		this.donhierrofesp = donhierrofesp;
	}

	@Column(name = "fuhierro", nullable = true, length = 1)
	public String getFuhierro() {
		return fuhierro;
	}

	public void setFuhierro(String fuhierro) {
		this.fuhierro = fuhierro;
	}

	@Column(name = "fuhierror", nullable = true)
	public Date getFuhierror() {
		return fuhierror;
	}

	public void setFuhierror(Date fuhierror) {
		this.fuhierror = fuhierror;
	}

	@Column(name = "fauhierror", nullable = true)
	public Date getFauhierror() {
		return fauhierror;
	}

	public void setFauhierror(Date fauhierror) {
		this.fauhierror = fauhierror;
	}

	@Column(name = "nvita", nullable = true, length = 1)
	public String getNvita() {
		return nvita;
	}

	public void setNvita(String nvita) {
		this.nvita = nvita;
	}

	@Column(name = "ncvita", nullable = true, length = 2)
	public String getNcvita() {
		return ncvita;
	}

	public void setNcvita(String ncvita) {
		this.ncvita = ncvita;
	}

	@Column(name = "tvitaund", nullable = true, length = 1)
	public String getTvitaund() {
		return tvitaund;
	}

	public void setTvitaund(String tvitaund) {
		this.tvitaund = tvitaund;
	}

	@Column(name = "tvitacant", nullable = true, length = 2)
	public String getTvitacant() {
		return tvitacant;
	}

	public void setTvitacant(String tvitacant) {
		this.tvitacant = tvitacant;
	}

	@Column(name = "ndvita", nullable = true, length = 1)
	public String getNdvita() {
		return ndvita;
	}

	public void setNdvita(String ndvita) {
		this.ndvita = ndvita;
	}

	@Column(name = "ndvitao", nullable = true, length = 155)
	public String getNdvitao() {
		return ndvitao;
	}

	public void setNdvitao(String ndvitao) {
		this.ndvitao = ndvitao;
	}

	@Column(name = "tdvita", nullable = true, length = 1)
	public String getTdvita() {
		return tdvita;
	}

	public void setTdvita(String tdvita) {
		this.tdvita = tdvita;
	}

	@Column(name = "fuvita", nullable = true)
	public Date getFuvita() {
		return fuvita;
	}

	public void setFuvita(Date fuvita) {
		this.fuvita = fuvita;
	}

	@Column(name = "fauvita", nullable = true)
	public Date getFauvita() {
		return fauvita;
	}

	public void setFauvita(Date fauvita) {
		this.fauvita = fauvita;
	}

	@Column(name = "ncnut", nullable = true, length = 1)
	public String getNcnut() {
		return ncnut;
	}

	public void setNcnut(String ncnut) {
		this.ncnut = ncnut;
	}

	@Column(name = "ncnutund", nullable = true, length = 1)
	public String getNcnutund() {
		return ncnutund;
	}

	public void setNcnutund(String ncnutund) {
		this.ncnutund = ncnutund;
	}

	@Column(name = "ncnutcant", nullable = true, length = 2)
	public String getNcnutcant() {
		return ncnutcant;
	}

	public void setNcnutcant(String ncnutcant) {
		this.ncnutcant = ncnutcant;
	}

	@Column(name = "doncnut", nullable = true, length = 25)
	public String getDoncnut() {
		return doncnut;
	}

	public void setDoncnut(String doncnut) {
		this.doncnut = doncnut;
	}

	@Column(name = "doncnutfotro", nullable = true, length = 155)
	public String getDoncnutfotro() {
		return doncnutfotro;
	}

	public void setDoncnutfotro(String doncnutfotro) {
		this.doncnutfotro = doncnutfotro;
	}

	@Column(name = "parasit", nullable = true, length = 1)
	public String getParasit() {
		return parasit;
	}

	public void setParasit(String parasit) {
		this.parasit = parasit;
	}

	@Column(name = "cvparas", nullable = true, length = 2)
	public String getCvparas() {
		return cvparas;
	}

	public void setCvparas(String cvparas) {
		this.cvparas = cvparas;
	}

	@Column(name = "mParasitario", nullable = true, length = 25)
	public String getmParasitario() {
		return mParasitario;
	}

	public void setmParasitario(String mParasitario) {
		this.mParasitario = mParasitario;
	}

	@Column(name = "otroMpEsp", nullable = true, length = 255)
	public String getOtroMpEsp() {
		return otroMpEsp;
	}

	public void setOtroMpEsp(String otroMpEsp) {
		this.otroMpEsp = otroMpEsp;
	}

	@Column(name = "donMp", nullable = true, length = 25)
	public String getDonMp() {
		return donMp;
	}

	public void setDonMp(String donMp) {
		this.donMp = donMp;
	}
	
	
	@Column(name = "otroDonMp", nullable = true, length = 255)
	public String getOtroDonMp() {
		return otroDonMp;
	}

	public void setOtroDonMp(String otroDonMp) {
		this.otroDonMp = otroDonMp;
	}

	@Column(name = "evitarParasito", nullable = true, length = 25)
	public String getEvitarParasito() {
		return evitarParasito;
	}

	public void setEvitarParasito(String evitarParasito) {
		this.evitarParasito = evitarParasito;
	}

	@Column(name = "oEvitarParasito", nullable = true, length = 255)
	public String getoEvitarParasito() {
		return oEvitarParasito;
	}

	public void setoEvitarParasito(String oEvitarParasito) {
		this.oEvitarParasito = oEvitarParasito;
	}
	
	@Column(name = "nlactmat", nullable = true, length = 1)
	public String getNlactmat() {
		return nlactmat;
	}

	public void setNlactmat(String nlactmat) {
		this.nlactmat = nlactmat;
	}

	@Column(name = "sexlmat", nullable = true, length = 1)
	public String getSexlmat() {
		return sexlmat;
	}

	public void setSexlmat(String sexlmat) {
		this.sexlmat = sexlmat;
	}

	@Column(name = "emeseslmat", nullable = true, length = 2)
	public String getEmeseslmat() {
		return emeseslmat;
	}

	public void setEmeseslmat(String emeseslmat) {
		this.emeseslmat = emeseslmat;
	}
	
	@Column(name = "fnaclmat", nullable = true)
	public Date getFnaclmat() {
		return fnaclmat;
	}

	public void setFnaclmat(Date fnaclmat) {
		this.fnaclmat = fnaclmat;
	}

	@Column(name = "pecho", nullable = true, length = 2)
	public String getPecho() {
		return pecho;
	}

	public void setPecho(String pecho) {
		this.pecho = pecho;
	}

	@Column(name = "motNopecho", nullable = true, length = 2)
	public String getMotNopecho() {
		return motNopecho;
	}

	public void setMotNopecho(String motNopecho) {
		this.motNopecho = motNopecho;
	}
	
	@Column(name = "motNopechoOtro", nullable = true, length = 255)
	public String getMotNopechoOtro() {
		return motNopechoOtro;
	}

	public void setMotNopechoOtro(String motNopechoOtro) {
		this.motNopechoOtro = motNopechoOtro;
	}

	@Column(name = "dapecho", nullable = true, length = 2)
	public String getDapecho() {
		return dapecho;
	}

	public void setDapecho(String dapecho) {
		this.dapecho = dapecho;
	}

	@Column(name = "tiempecho", nullable = true, length = 2)
	public String getTiempecho() {
		return tiempecho;
	}

	public void setTiempecho(String tiempecho) {
		this.tiempecho = tiempecho;
	}

	@Column(name = "tiemmama", nullable = true, length = 2)
	public String getTiemmama() {
		return tiemmama;
	}

	public void setTiemmama(String tiemmama) {
		this.tiemmama = tiemmama;
	}

	@Column(name = "tiemmamaMins", nullable = true, length = 2)
	public String getTiemmamaMins() {
		return tiemmamaMins;
	}

	public void setTiemmamaMins(String tiemmamaMins) {
		this.tiemmamaMins = tiemmamaMins;
	}

	@Column(name = "dospechos", nullable = true, length = 2)
	public String getDospechos() {
		return dospechos;
	}

	public void setDospechos(String dospechos) {
		this.dospechos = dospechos;
	}

	@Column(name = "vecespechodia", nullable = true, length = 2)
	public String getVecespechodia() {
		return vecespechodia;
	}

	public void setVecespechodia(String vecespechodia) {
		this.vecespechodia = vecespechodia;
	}

	@Column(name = "vecespechonoche", nullable = true, length = 2)
	public String getVecespechonoche() {
		return vecespechonoche;
	}

	public void setVecespechonoche(String vecespechonoche) {
		this.vecespechonoche = vecespechonoche;
	}

	@Column(name = "elmatexcund", nullable = true, length = 2)
	public String getElmatexcund() {
		return elmatexcund;
	}

	public void setElmatexcund(String elmatexcund) {
		this.elmatexcund = elmatexcund;
	}

	@Column(name = "elmatexccant", nullable = true, length = 2)
	public String getElmatexccant() {
		return elmatexccant;
	}

	public void setElmatexccant(String elmatexccant) {
		this.elmatexccant = elmatexccant;
	}

	@Column(name = "ediopechound", nullable = true, length = 2)
	public String getEdiopechound() {
		return ediopechound;
	}

	public void setEdiopechound(String ediopechound) {
		this.ediopechound = ediopechound;
	}

	@Column(name = "ediopechocant", nullable = true, length = 2)
	public String getEdiopechocant() {
		return ediopechocant;
	}

	public void setEdiopechocant(String ediopechocant) {
		this.ediopechocant = ediopechocant;
	}
	
	@Column(name = "combeb", nullable = true, length = 2)
	public String getCombeb() {
		return combeb;
	}

	public void setCombeb(String combeb) {
		this.combeb = combeb;
	}

	@Column(name = "ealimund", nullable = true, length = 2)
	public String getEalimund() {
		return ealimund;
	}

	public void setEalimund(String ealimund) {
		this.ealimund = ealimund;
	}

	@Column(name = "ealimcant", nullable = true, length = 2)
	public String getEalimcant() {
		return ealimcant;
	}

	public void setEalimcant(String ealimcant) {
		this.ealimcant = ealimcant;
	}

	@Column(name = "bebeLiq", nullable = true, length = 25)
	public String getBebeLiq() {
		return bebeLiq;
	}

	public void setBebeLiq(String bebeLiq) {
		this.bebeLiq = bebeLiq;
	}

	@Column(name = "reunionPeso", nullable = true, length = 2)
	public String getReunionPeso() {
		return reunionPeso;
	}

	public void setReunionPeso(String reunionPeso) {
		this.reunionPeso = reunionPeso;
	}

	@Column(name = "quienReunionPeso", nullable = true, length = 2)
	public String getQuienReunionPeso() {
		return quienReunionPeso;
	}

	public void setQuienReunionPeso(String quienReunionPeso) {
		this.quienReunionPeso = quienReunionPeso;
	}
	
	
	@Column(name = "quienReunionPesoOtro", nullable = true, length = 255)
	public String getQuienReunionPesoOtro() {
		return quienReunionPesoOtro;
	}

	public void setQuienReunionPesoOtro(String quienReunionPesoOtro) {
		this.quienReunionPesoOtro = quienReunionPesoOtro;
	}

	@Column(name = "assitioReunionPeso", nullable = true, length = 2)
	public String getAssitioReunionPeso() {
		return assitioReunionPeso;
	}

	public void setAssitioReunionPeso(String assitioReunionPeso) {
		this.assitioReunionPeso = assitioReunionPeso;
	}

	@Column(name = "pesoent1", nullable = true)
	public Float getPesoEnt1() {
		return pesoEnt1;
	}

	public void setPesoEnt1(Float pesoEnt1) {
		this.pesoEnt1 = pesoEnt1;
	}

	@Column(name = "pesoent2", nullable = true)
	public Float getPesoEnt2() {
		return pesoEnt2;
	}

	public void setPesoEnt2(Float pesoEnt2) {
		this.pesoEnt2 = pesoEnt2;
	}

	@Column(name = "tallaent1", nullable = true)
	public Float getTallaEnt1() {
		return tallaEnt1;
	}

	public void setTallaEnt1(Float tallaEnt1) {
		this.tallaEnt1 = tallaEnt1;
	}

	@Column(name = "tallaent2", nullable = true)
	public Float getTallaEnt2() {
		return tallaEnt2;
	}

	public void setTallaEnt2(Float tallaEnt2) {
		this.tallaEnt2 = tallaEnt2;
	}

	@Column(name = "pesonin1", nullable = true)
	public Float getPesoNin1() {
		return pesoNin1;
	}

	public void setPesoNin1(Float pesoNin1) {
		this.pesoNin1 = pesoNin1;
	}

	@Column(name = "pesonin2", nullable = true)
	public Float getPesoNin2() {
		return pesoNin2;
	}

	public void setPesoNin2(Float pesoNin2) {
		this.pesoNin2 = pesoNin2;
	}

	@Column(name = "longnin1", nullable = true)
	public Float getLongNin1() {
		return longNin1;
	}

	public void setLongNin1(Float longNin1) {
		this.longNin1 = longNin1;
	}

	@Column(name = "longnin2", nullable = true)
	public Float getLongNin2() {
		return longNin2;
	}

	public void setLongNin2(Float longNin2) {
		this.longNin2 = longNin2;
	}

	@Column(name = "tallanin1", nullable = true)
	public Float getTallaNin1() {
		return tallaNin1;
	}

	public void setTallaNin1(Float tallaNin1) {
		this.tallaNin1 = tallaNin1;
	}

	@Column(name = "tallanin2", nullable = true)
	public Float getTallaNin2() {
		return tallaNin2;
	}

	public void setTallaNin2(Float tallaNin2) {
		this.tallaNin2 = tallaNin2;
	}

	@Column(name = "msent", nullable = true, length = 1)
	public String getMsEnt() {
		return msEnt;
	}

	public void setMsEnt(String msEnt) {
		this.msEnt = msEnt;
	}

	@Column(name = "hbent", nullable = true)
	public Float getHbEnt() {
		return hbEnt;
	}

	public void setHbEnt(Float hbEnt) {
		this.hbEnt = hbEnt;
	}

	@Column(name = "msnin", nullable = true, length = 1)
	public String getMsNin() {
		return msNin;
	}

	public void setMsNin(String msNin) {
		this.msNin = msNin;
	}

	@Column(name = "hbnin", nullable = true)
	public Float getHbNin() {
		return hbNin;
	}

	public void setHbNin(Float hbNin) {
		this.hbNin = hbNin;
	}

	@Column(name = "moent", nullable = true, length = 1)
	public String getMoEnt() {
		return moEnt;
	}

	public void setMoEnt(String moEnt) {
		this.moEnt = moEnt;
	}

	@Column(name = "pan", nullable = true, length = 100)
	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	@Column(name = "sal", nullable = true, length = 1)
	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	@Column(name = "marcasal", nullable = true, length = 100)
	public String getMarcaSal() {
		return marcaSal;
	}

	public void setMarcaSal(String marcaSal) {
		this.marcaSal = marcaSal;
	}

	@Column(name = "azucar", nullable = true, length = 1)
	public String getAzucar() {
		return azucar;
	}

	public void setAzucar(String azucar) {
		this.azucar = azucar;
	}

	@Column(name = "marcaazucar", nullable = true, length = 100)
	public String getMarcaAzucar() {
		return marcaAzucar;
	}

	public void setMarcaAzucar(String marcaAzucar) {
		this.marcaAzucar = marcaAzucar;
	}

	@Column(name = "patConsAzuc", nullable = true, length = 1)
	public String getPatConsAzuc() {
		return patConsAzuc;
	}

	public void setPatConsAzuc(String patConsAzuc) {
		this.patConsAzuc = patConsAzuc;
	}

	@Column(name = "patConsAzucFrec", nullable = true, length = 1)
	public String getPatConsAzucFrec() {
		return patConsAzucFrec;
	}

	public void setPatConsAzucFrec(String patConsAzucFrec) {
		this.patConsAzucFrec = patConsAzucFrec;
	}

	@Column(name = "patConsSal", nullable = true, length = 1)
	public String getPatConsSal() {
		return patConsSal;
	}

	public void setPatConsSal(String patConsSal) {
		this.patConsSal = patConsSal;
	}

	@Column(name = "patConsSalFrec", nullable = true, length = 1)
	public String getPatConsSalFrec() {
		return patConsSalFrec;
	}

	public void setPatConsSalFrec(String patConsSalFrec) {
		this.patConsSalFrec = patConsSalFrec;
	}

	@Column(name = "patConsArroz", nullable = true, length = 1)
	public String getPatConsArroz() {
		return patConsArroz;
	}

	public void setPatConsArroz(String patConsArroz) {
		this.patConsArroz = patConsArroz;
	}

	@Column(name = "patConsArrozFrec", nullable = true, length = 1)
	public String getPatConsArrozFrec() {
		return patConsArrozFrec;
	}

	public void setPatConsArrozFrec(String patConsArrozFrec) {
		this.patConsArrozFrec = patConsArrozFrec;
	}

	@Column(name = "patConsAcei", nullable = true, length = 1)
	public String getPatConsAcei() {
		return patConsAcei;
	}

	public void setPatConsAcei(String patConsAcei) {
		this.patConsAcei = patConsAcei;
	}

	@Column(name = "patConsAceiFrec", nullable = true, length = 1)
	public String getPatConsAceiFrec() {
		return patConsAceiFrec;
	}

	public void setPatConsAceiFrec(String patConsAceiFrec) {
		this.patConsAceiFrec = patConsAceiFrec;
	}

	@Column(name = "patConsFri", nullable = true, length = 1)
	public String getPatConsFri() {
		return patConsFri;
	}

	public void setPatConsFri(String patConsFri) {
		this.patConsFri = patConsFri;
	}

	@Column(name = "patConsFriFrec", nullable = true, length = 1)
	public String getPatConsFriFrec() {
		return patConsFriFrec;
	}

	public void setPatConsFriFrec(String patConsFriFrec) {
		this.patConsFriFrec = patConsFriFrec;
	}

	@Column(name = "patConsCebo", nullable = true, length = 1)
	public String getPatConsCebo() {
		return patConsCebo;
	}

	public void setPatConsCebo(String patConsCebo) {
		this.patConsCebo = patConsCebo;
	}

	@Column(name = "patConsCeboFrec", nullable = true, length = 1)
	public String getPatConsCeboFrec() {
		return patConsCeboFrec;
	}

	public void setPatConsCeboFrec(String patConsCeboFrec) {
		this.patConsCeboFrec = patConsCeboFrec;
	}

	@Column(name = "patConsChi", nullable = true, length = 1)
	public String getPatConsChi() {
		return patConsChi;
	}

	public void setPatConsChi(String patConsChi) {
		this.patConsChi = patConsChi;
	}

	@Column(name = "patConsChiFrec", nullable = true, length = 1)
	public String getPatConsChiFrec() {
		return patConsChiFrec;
	}

	public void setPatConsChiFrec(String patConsChiFrec) {
		this.patConsChiFrec = patConsChiFrec;
	}

	@Column(name = "patConsQue", nullable = true, length = 1)
	public String getPatConsQue() {
		return patConsQue;
	}

	public void setPatConsQue(String patConsQue) {
		this.patConsQue = patConsQue;
	}

	@Column(name = "patConsQueFrec", nullable = true, length = 1)
	public String getPatConsQueFrec() {
		return patConsQueFrec;
	}

	public void setPatConsQueFrec(String patConsQueFrec) {
		this.patConsQueFrec = patConsQueFrec;
	}

	@Column(name = "patConsCafe", nullable = true, length = 1)
	public String getPatConsCafe() {
		return patConsCafe;
	}

	public void setPatConsCafe(String patConsCafe) {
		this.patConsCafe = patConsCafe;
	}

	@Column(name = "patConsCafeFrec", nullable = true, length = 1)
	public String getPatConsCafeFrec() {
		return patConsCafeFrec;
	}

	public void setPatConsCafeFrec(String patConsCafeFrec) {
		this.patConsCafeFrec = patConsCafeFrec;
	}

	@Column(name = "patConsTor", nullable = true, length = 1)
	public String getPatConsTor() {
		return patConsTor;
	}

	public void setPatConsTor(String patConsTor) {
		this.patConsTor = patConsTor;
	}

	@Column(name = "patConsTorFrec", nullable = true, length = 1)
	public String getPatConsTorFrec() {
		return patConsTorFrec;
	}

	public void setPatConsTorFrec(String patConsTorFrec) {
		this.patConsTorFrec = patConsTorFrec;
	}

	@Column(name = "patConsCar", nullable = true, length = 1)
	public String getPatConsCar() {
		return patConsCar;
	}

	public void setPatConsCar(String patConsCar) {
		this.patConsCar = patConsCar;
	}

	@Column(name = "patConsCarFrec", nullable = true, length = 1)
	public String getPatConsCarFrec() {
		return patConsCarFrec;
	}

	public void setPatConsCarFrec(String patConsCarFrec) {
		this.patConsCarFrec = patConsCarFrec;
	}

	@Column(name = "patConsHue", nullable = true, length = 1)
	public String getPatConsHue() {
		return patConsHue;
	}

	public void setPatConsHue(String patConsHue) {
		this.patConsHue = patConsHue;
	}

	@Column(name = "patConsHueFrec", nullable = true, length = 1)
	public String getPatConsHueFrec() {
		return patConsHueFrec;
	}

	public void setPatConsHueFrec(String patConsHueFrec) {
		this.patConsHueFrec = patConsHueFrec;
	}

	@Column(name = "patConsPan", nullable = true, length = 1)
	public String getPatConsPan() {
		return patConsPan;
	}

	public void setPatConsPan(String patConsPan) {
		this.patConsPan = patConsPan;
	}

	@Column(name = "patConsPanFrec", nullable = true, length = 1)
	public String getPatConsPanFrec() {
		return patConsPanFrec;
	}

	public void setPatConsPanFrec(String patConsPanFrec) {
		this.patConsPanFrec = patConsPanFrec;
	}

	@Column(name = "patConsBan", nullable = true, length = 1)
	public String getPatConsBan() {
		return patConsBan;
	}

	public void setPatConsBan(String patConsBan) {
		this.patConsBan = patConsBan;
	}

	@Column(name = "patConsBanFrec", nullable = true, length = 1)
	public String getPatConsBanFrec() {
		return patConsBanFrec;
	}

	public void setPatConsBanFrec(String patConsBanFrec) {
		this.patConsBanFrec = patConsBanFrec;
	}

	@Column(name = "patConsPanDul", nullable = true, length = 1)
	public String getPatConsPanDul() {
		return patConsPanDul;
	}

	public void setPatConsPanDul(String patConsPanDul) {
		this.patConsPanDul = patConsPanDul;
	}

	@Column(name = "patConsPanDulFrec", nullable = true, length = 1)
	public String getPatConsPanDulFrec() {
		return patConsPanDulFrec;
	}

	public void setPatConsPanDulFrec(String patConsPanDulFrec) {
		this.patConsPanDulFrec = patConsPanDulFrec;
	}

	@Column(name = "patConsPla", nullable = true, length = 1)
	public String getPatConsPla() {
		return patConsPla;
	}

	public void setPatConsPla(String patConsPla) {
		this.patConsPla = patConsPla;
	}

	@Column(name = "patConsPlaFrec", nullable = true, length = 1)
	public String getPatConsPlaFrec() {
		return patConsPlaFrec;
	}

	public void setPatConsPlaFrec(String patConsPlaFrec) {
		this.patConsPlaFrec = patConsPlaFrec;
	}

	@Column(name = "patConsPapa", nullable = true, length = 1)
	public String getPatConsPapa() {
		return patConsPapa;
	}

	public void setPatConsPapa(String patConsPapa) {
		this.patConsPapa = patConsPapa;
	}

	@Column(name = "patConsPapaFrec", nullable = true, length = 1)
	public String getPatConsPapaFrec() {
		return patConsPapaFrec;
	}

	public void setPatConsPapaFrec(String patConsPapaFrec) {
		this.patConsPapaFrec = patConsPapaFrec;
	}

	@Column(name = "patConsLec", nullable = true, length = 1)
	public String getPatConsLec() {
		return patConsLec;
	}

	public void setPatConsLec(String patConsLec) {
		this.patConsLec = patConsLec;
	}

	@Column(name = "patConsLecFrec", nullable = true, length = 1)
	public String getPatConsLecFrec() {
		return patConsLecFrec;
	}

	public void setPatConsLecFrec(String patConsLecFrec) {
		this.patConsLecFrec = patConsLecFrec;
	}

	@Column(name = "patConsSalTom", nullable = true, length = 1)
	public String getPatConsSalTom() {
		return patConsSalTom;
	}

	public void setPatConsSalTom(String patConsSalTom) {
		this.patConsSalTom = patConsSalTom;
	}

	@Column(name = "patConsSalTomFrec", nullable = true, length = 1)
	public String getPatConsSalTomFrec() {
		return patConsSalTomFrec;
	}

	public void setPatConsSalTomFrec(String patConsSalTomFrec) {
		this.patConsSalTomFrec = patConsSalTomFrec;
	}

	@Column(name = "patConsGas", nullable = true, length = 1)
	public String getPatConsGas() {
		return patConsGas;
	}

	public void setPatConsGas(String patConsGas) {
		this.patConsGas = patConsGas;
	}

	@Column(name = "patConsGasFrec", nullable = true, length = 1)
	public String getPatConsGasFrec() {
		return patConsGasFrec;
	}

	public void setPatConsGasFrec(String patConsGasFrec) {
		this.patConsGasFrec = patConsGasFrec;
	}

	@Column(name = "patConsCarRes", nullable = true, length = 1)
	public String getPatConsCarRes() {
		return patConsCarRes;
	}

	public void setPatConsCarRes(String patConsCarRes) {
		this.patConsCarRes = patConsCarRes;
	}

	@Column(name = "patConsCarResFrec", nullable = true, length = 1)
	public String getPatConsCarResFrec() {
		return patConsCarResFrec;
	}

	public void setPatConsCarResFrec(String patConsCarResFrec) {
		this.patConsCarResFrec = patConsCarResFrec;
	}

	@Column(name = "patConsAvena", nullable = true, length = 1)
	public String getPatConsAvena() {
		return patConsAvena;
	}

	public void setPatConsAvena(String patConsAvena) {
		this.patConsAvena = patConsAvena;
	}

	@Column(name = "patConsAvenaFrec", nullable = true, length = 1)
	public String getPatConsAvenaFrec() {
		return patConsAvenaFrec;
	}

	public void setPatConsAvenaFrec(String patConsAvenaFrec) {
		this.patConsAvenaFrec = patConsAvenaFrec;
	}

	@Column(name = "patConsNaran", nullable = true, length = 1)
	public String getPatConsNaran() {
		return patConsNaran;
	}

	public void setPatConsNaran(String patConsNaran) {
		this.patConsNaran = patConsNaran;
	}

	@Column(name = "patConsNaranFrec", nullable = true, length = 1)
	public String getPatConsNaranFrec() {
		return patConsNaranFrec;
	}

	public void setPatConsNaranFrec(String patConsNaranFrec) {
		this.patConsNaranFrec = patConsNaranFrec;
	}

	@Column(name = "patConsPasta", nullable = true, length = 1)
	public String getPatConsPasta() {
		return patConsPasta;
	}

	public void setPatConsPasta(String patConsPasta) {
		this.patConsPasta = patConsPasta;
	}

	@Column(name = "patConsPastaFrec", nullable = true, length = 1)
	public String getPatConsPastaFrec() {
		return patConsPastaFrec;
	}

	public void setPatConsPastaFrec(String patConsPastaFrec) {
		this.patConsPastaFrec = patConsPastaFrec;
	}

	@Column(name = "patConsAyote", nullable = true, length = 1)
	public String getPatConsAyote() {
		return patConsAyote;
	}

	public void setPatConsAyote(String patConsAyote) {
		this.patConsAyote = patConsAyote;
	}

	@Column(name = "patConsAyoteFrec", nullable = true, length = 1)
	public String getPatConsAyoteFrec() {
		return patConsAyoteFrec;
	}

	public void setPatConsAyoteFrec(String patConsAyoteFrec) {
		this.patConsAyoteFrec = patConsAyoteFrec;
	}

	@Column(name = "patConsMagg", nullable = true, length = 1)
	public String getPatConsMagg() {
		return patConsMagg;
	}

	public void setPatConsMagg(String patConsMagg) {
		this.patConsMagg = patConsMagg;
	}

	@Column(name = "patConsMaggFrec", nullable = true, length = 1)
	public String getPatConsMaggFrec() {
		return patConsMaggFrec;
	}

	public void setPatConsMaggFrec(String patConsMaggFrec) {
		this.patConsMaggFrec = patConsMaggFrec;
	}

	@Column(name = "patConsFrut", nullable = true, length = 1)
	public String getPatConsFrut() {
		return patConsFrut;
	}

	public void setPatConsFrut(String patConsFrut) {
		this.patConsFrut = patConsFrut;
	}

	@Column(name = "patConsFrutFrec", nullable = true, length = 1)
	public String getPatConsFrutFrec() {
		return patConsFrutFrec;
	}

	public void setPatConsFrutFrec(String patConsFrutFrec) {
		this.patConsFrutFrec = patConsFrutFrec;
	}

	@Column(name = "patConsRaic", nullable = true, length = 1)
	public String getPatConsRaic() {
		return patConsRaic;
	}

	public void setPatConsRaic(String patConsRaic) {
		this.patConsRaic = patConsRaic;
	}

	@Column(name = "patConsRaicFrec", nullable = true, length = 1)
	public String getPatConsRaicFrec() {
		return patConsRaicFrec;
	}

	public void setPatConsRaicFrec(String patConsRaicFrec) {
		this.patConsRaicFrec = patConsRaicFrec;
	}

	@Column(name = "patConsMenei", nullable = true, length = 1)
	public String getPatConsMenei() {
		return patConsMenei;
	}

	public void setPatConsMenei(String patConsMenei) {
		this.patConsMenei = patConsMenei;
	}

	@Column(name = "patConsMeneiFrec", nullable = true, length = 1)
	public String getPatConsMeneiFrec() {
		return patConsMeneiFrec;
	}

	public void setPatConsMeneiFrec(String patConsMeneiFrec) {
		this.patConsMeneiFrec = patConsMeneiFrec;
	}

	@Column(name = "patConsZana", nullable = true, length = 1)
	public String getPatConsZana() {
		return patConsZana;
	}

	public void setPatConsZana(String patConsZana) {
		this.patConsZana = patConsZana;
	}

	@Column(name = "patConsZanaFrec", nullable = true, length = 1)
	public String getPatConsZanaFrec() {
		return patConsZanaFrec;
	}

	public void setPatConsZanaFrec(String patConsZanaFrec) {
		this.patConsZanaFrec = patConsZanaFrec;
	}

	@Column(name = "patConsPinolillo", nullable = true, length = 1)
	public String getPatConsPinolillo() {
		return patConsPinolillo;
	}

	public void setPatConsPinolillo(String patConsPinolillo) {
		this.patConsPinolillo = patConsPinolillo;
	}

	@Column(name = "patConsPinolilloFrec", nullable = true, length = 1)
	public String getPatConsPinolilloFrec() {
		return patConsPinolilloFrec;
	}

	public void setPatConsPinolilloFrec(String patConsPinolilloFrec) {
		this.patConsPinolilloFrec = patConsPinolilloFrec;
	}

	@Column(name = "patConsOVerd", nullable = true, length = 1)
	public String getPatConsOVerd() {
		return patConsOVerd;
	}

	public void setPatConsOVerd(String patConsOVerd) {
		this.patConsOVerd = patConsOVerd;
	}

	@Column(name = "patConsOVerdFrec", nullable = true, length = 1)
	public String getPatConsOVerdFrec() {
		return patConsOVerdFrec;
	}

	public void setPatConsOVerdFrec(String patConsOVerdFrec) {
		this.patConsOVerdFrec = patConsOVerdFrec;
	}

	@Column(name = "patConsPesc", nullable = true, length = 1)
	public String getPatConsPesc() {
		return patConsPesc;
	}

	public void setPatConsPesc(String patConsPesc) {
		this.patConsPesc = patConsPesc;
	}

	@Column(name = "patConsPescFrec", nullable = true, length = 1)
	public String getPatConsPescFrec() {
		return patConsPescFrec;
	}

	public void setPatConsPescFrec(String patConsPescFrec) {
		this.patConsPescFrec = patConsPescFrec;
	}

	@Column(name = "patConsAlimComp", nullable = true, length = 1)
	public String getPatConsAlimComp() {
		return patConsAlimComp;
	}

	public void setPatConsAlimComp(String patConsAlimComp) {
		this.patConsAlimComp = patConsAlimComp;
	}

	@Column(name = "patConsAlimCompFrec", nullable = true, length = 1)
	public String getPatConsAlimCompFrec() {
		return patConsAlimCompFrec;
	}

	public void setPatConsAlimCompFrec(String patConsAlimCompFrec) {
		this.patConsAlimCompFrec = patConsAlimCompFrec;
	}

	@Column(name = "patConsLecPol", nullable = true, length = 1)
	public String getPatConsLecPol() {
		return patConsLecPol;
	}

	public void setPatConsLecPol(String patConsLecPol) {
		this.patConsLecPol = patConsLecPol;
	}

	@Column(name = "patConsLecPolFrec", nullable = true, length = 1)
	public String getPatConsLecPolFrec() {
		return patConsLecPolFrec;
	}

	public void setPatConsLecPolFrec(String patConsLecPolFrec) {
		this.patConsLecPolFrec = patConsLecPolFrec;
	}

	@Column(name = "patConsCarCer", nullable = true, length = 1)
	public String getPatConsCarCer() {
		return patConsCarCer;
	}

	public void setPatConsCarCer(String patConsCarCer) {
		this.patConsCarCer = patConsCarCer;
	}

	@Column(name = "patConsCarCerFrec", nullable = true, length = 1)
	public String getPatConsCarCerFrec() {
		return patConsCarCerFrec;
	}

	public void setPatConsCarCerFrec(String patConsCarCerFrec) {
		this.patConsCarCerFrec = patConsCarCerFrec;
	}

	@Column(name = "patConsEmb", nullable = true, length = 1)
	public String getPatConsEmb() {
		return patConsEmb;
	}

	public void setPatConsEmb(String patConsEmb) {
		this.patConsEmb = patConsEmb;
	}

	@Column(name = "patConsEmbFrec", nullable = true, length = 1)
	public String getPatConsEmbFrec() {
		return patConsEmbFrec;
	}

	public void setPatConsEmbFrec(String patConsEmbFrec) {
		this.patConsEmbFrec = patConsEmbFrec;
	}

	@Column(name = "patConsMar", nullable = true, length = 1)
	public String getPatConsMar() {
		return patConsMar;
	}

	public void setPatConsMar(String patConsMar) {
		this.patConsMar = patConsMar;
	}

	@Column(name = "patConsMarFrec", nullable = true, length = 1)
	public String getPatConsMarFrec() {
		return patConsMarFrec;
	}

	public void setPatConsMarFrec(String patConsMarFrec) {
		this.patConsMarFrec = patConsMarFrec;
	}

	@Column(name = "patConsCarCaza", nullable = true, length = 1)
	public String getPatConsCarCaza() {
		return patConsCarCaza;
	}

	public void setPatConsCarCaza(String patConsCarCaza) {
		this.patConsCarCaza = patConsCarCaza;
	}

	@Column(name = "patConsCarCazaFrec", nullable = true, length = 1)
	public String getPatConsCarCazaFrec() {
		return patConsCarCazaFrec;
	}

	public void setPatConsCarCazaFrec(String patConsCarCazaFrec) {
		this.patConsCarCazaFrec = patConsCarCazaFrec;
	}

	@Override
	public boolean isFieldAuditable(String fieldname) {
		return true;
	}

	@Override
	public String toString(){
		return this.codigo;
	}
	
	@Override
	public boolean equals(Object other) {
		
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof Encuesta))
			return false;
		
		Encuesta castOther = (Encuesta) other;

		return (this.getIdent().equals(castOther.getIdent()));
	}

}
