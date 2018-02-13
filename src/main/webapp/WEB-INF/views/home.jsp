<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<jsp:include page="fragments/headTag.jsp" />
<!-- Styles required by this views -->

</head>
<!-- BODY options, add following classes to body to change options

// Header options
1. '.header-fixed'					- Fixed Header

// Brand options
1. '.brand-minimized'       - Minimized brand (Only symbol)

// Sidebar options
1. '.sidebar-fixed'					- Fixed Sidebar
2. '.sidebar-hidden'				- Hidden Sidebar
3. '.sidebar-off-canvas'		- Off Canvas Sidebar
4. '.sidebar-minimized'			- Minimized Sidebar (Only icons)
5. '.sidebar-compact'			  - Compact Sidebar

// Aside options
1. '.aside-menu-fixed'			- Fixed Aside Menu
2. '.aside-menu-hidden'			- Hidden Aside Menu
3. '.aside-menu-off-canvas'	- Off Canvas Aside Menu

// Breadcrumb options
1. '.breadcrumb-fixed'			- Fixed Breadcrumb

// Footer options
1. '.footer-fixed'					- Fixed footer

-->
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
  <!-- Header -->
  <jsp:include page="fragments/bodyHeader.jsp" />
  <div class="app-body">
  	<!-- Navigation -->
  	<jsp:include page="fragments/sideBar.jsp" />
  	<!-- Variables y conteos -->
	<c:forEach var="datEncuesta" items="${datosEncuestasxFecha}">
		<c:set var="totalEncuestas" value="${totalEncuestas + datEncuesta[1]}"/>
		<c:set var="totalEncuestasInactivas" value="${totalEncuestasInactivas + datEncuesta[2]}"/>
		<c:set var="totalEncuestasActivas" value="${totalEncuestasActivas + datEncuesta[3]}"/>
	</c:forEach>
	<c:set var="totalEncuestas"><fmt:parseNumber type="number" value="${totalEncuestas}"/></c:set>
  	<c:set var="totalEncuestasActivas"><fmt:parseNumber type="number" value="${totalEncuestasActivas}"/></c:set>
	<c:set var="totalEncuestasInactivas"><fmt:parseNumber type="number" value="${totalEncuestasInctivas}"/></c:set>
	<c:choose>
		<c:when test="${totalEncuestas > 0}">
			<c:set var="pEncuestasActivas" value="${totalEncuestasActivas/totalEncuestas*100}"/>
		</c:when>
		<c:otherwise>
			<c:set var="pEncuestasActivas" value="${0.00}"/>
		</c:otherwise>
	</c:choose>
	
	
	<fmt:formatNumber var="pEncuestasActivas"  value="${pEncuestasActivas}"  maxFractionDigits="2" />
	
  	
    <!-- Main content -->
    <main class="main">

      <!-- Breadcrumb -->
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<spring:url value="/" htmlEscape="true "/>"><spring:message code="home" /></a></li>
        <li class="breadcrumb-item active"><spring:message code="dashboard" /></li>
        <!-- Breadcrumb Menu-->
        <li class="breadcrumb-menu d-md-down-none">
          <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
            <a class="btn" href="#"><i class="icon-speech"></i></a>
            <a class="btn" href="<spring:url value="/" htmlEscape="true "/>"><i class="icon-graph"></i> &nbsp;<spring:message code="dashboard" /></a>
            <a class="btn" href="<spring:url value="/logout" htmlEscape="true" />"><i class="icon-logout"></i> &nbsp;<spring:message code="logout" /></a>
          </div>
        </li>
      </ol>
	  <!-- Container -->
      <div class="container-fluid">
        <div class="animated fadeIn">
        
        	<div class="row">
            <div class="col-6 col-lg-3">
              <div class="card">
                <div class="card-body p-3 clearfix">
                  <i class="fa fa-signal bg-primary p-3 font-2xl mr-3 float-left"></i>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="encrea" /></div>
                  <div class="h5 text-right"><c:out value="${totalEncuestas}" /></div>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="encact" /></div>
                  <div class="h5 text-right"><c:out value="${totalEncuestasActivas}" /> (<c:out value="${pEncuestasActivas}" />%)</div>
                </div>
                <div class="card-footer px-3 py-2">
                  <!-- a class="font-weight-bold font-xs btn-block text-muted" href="#"><spring:message code="viewmore" /> <i class="fa fa-angle-right float-right font-lg"></i></a> -->
                </div>
              </div>
            </div>
            <!--/.col-->

            <div class="col-6 col-lg-3">
              <div class="card">
                <div class="card-body p-3 clearfix">
                  <i class="fa fa-group bg-info p-3 font-2xl mr-3 float-left"></i>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="usract" /></div>
                  <div class="h5 text-right"><c:out value="${numUsuarios}" /></div>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="usrenc" /></div>
                  <fmt:formatNumber var="porcUsuariosActivos"  value="${porcUsuariosActivos}"  maxFractionDigits="2" />
                  <div class="h5 text-right"><c:out value="${numUsuariosEnc}" /> (<c:out value="${porcUsuariosActivos}" />%)</div>
                </div>
                <div class="card-footer px-3 py-2">
                  <!-- a class="font-weight-bold font-xs btn-block text-muted" href="#"><spring:message code="viewmore" /> <i class="fa fa-angle-right float-right font-lg"></i></a> -->
                </div>
              </div>
            </div>
            <!--/.col-->

            <div class="col-6 col-lg-3">
              <div class="card">
                <div class="card-body p-3 clearfix">
                  <i class="fa fa-map bg-info p-3 font-2xl mr-3 float-left"></i>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="segact" /></div>
                  <div class="h5 text-right"><c:out value="${numSegmentos}" /></div>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="segenc" /></div>
                  <fmt:formatNumber var="porcSegmentosActivos"  value="${porcSegmentosActivos}"  maxFractionDigits="2" />
                  <div class="h5 text-right"><c:out value="${numSegmentosEnc}" /> (<c:out value="${porcSegmentosActivos}" />%)</div>
                </div>
                <div class="card-footer px-3 py-2">
                  <!-- a class="font-weight-bold font-xs btn-block text-muted" href="#"><spring:message code="viewmore" /> <i class="fa fa-angle-right float-right font-lg"></i></a> -->
                </div>
              </div>
            </div>
            <!--/.col-->
            
            <div class="col-6 col-lg-3">
              <div class="card">
                <div class="card-body p-3 clearfix">
                  <i class="fa fa-check bg-info p-3 font-2xl mr-3 float-left"></i>
                  <div class="text-uppercase text-muted font-weight-bold font-xs text-right mb-0 mt-2"><spring:message code="encsup" /></div>
                  <c:choose>
					<c:when test="${totalEncuestasActivas > 0}">
						<c:set var="porcEncSup" value="${numEncSup*100/totalEncuestasActivas}"/>
					</c:when>
					<c:otherwise>
						<c:set var="porcEncSup" value="${0.00}"/>
					</c:otherwise>
				  </c:choose>
                  <fmt:formatNumber var="porcEncSup"  value="${porcEncSup}"  maxFractionDigits="2" />
                  <div class="h5 text-right"><c:out value="${numEncSup}" /> (<c:out value="${porcEncSup}" />%)</div>
                </div>
                <div class="card-footer px-3 py-2">
                  <!-- a class="font-weight-bold font-xs btn-block text-muted" href="#"><spring:message code="viewmore" /> <i class="fa fa-angle-right float-right font-lg"></i></a> -->
                </div>
              </div>
            </div>
            <!--/.col-->
            
          </div>
          <!--/.row-->
          
          <div class="card">
            <div class="card-header">
              <spring:message code="encday" />
            </div>
            <div class="card-body">
              <div class="chart-wrapper" style="height:300px;margin-top:20px;">
                <div class="chart-wrapper" style="height:300px;margin-top:20px;">
                  <canvas id="dates-chart" height="300"></canvas>
                </div>
              </div>
            </div>
          </div>
          <!--/.card-->
          
          <div class="card-columns cols-2">
            <div class="card">
              <div class="card-header">
                <spring:message code="encseg" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="segments-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <spring:message code="encmun" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="muns-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <spring:message code="encdep" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="deps-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <spring:message code="encreg" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="regs-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <spring:message code="encproc" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="proc-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <spring:message code="encsexjf" />
                <div class="card-actions"></div>
              </div>
              <div class="card-body">
                <div class="chart-wrapper">
                  <canvas id="sexo-chart"></canvas>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
      <!-- /.container-fluid -->
    </main>
    
  </div>
  <!-- Pie de página -->
  <jsp:include page="fragments/bodyFooter.jsp" />

  <!-- Bootstrap and necessary plugins -->
  <jsp:include page="fragments/corePlugins.jsp" />
  <jsp:include page="fragments/bodyUtils.jsp" />

  <!-- GenesisUI main scripts -->
  <spring:url value="/resources/js/app.js" var="App" />
  <script src="${App}" type="text/javascript"></script>
  
  <!-- Lenguaje -->
  <c:choose>
	<c:when test="${cookie.eSivinLang.value == null}">
		<c:set var="lenguaje" value="es"/>
	</c:when>
	<c:otherwise>
		<c:set var="lenguaje" value="${cookie.eSivinLang.value}"/>
	</c:otherwise>
  </c:choose>
  <spring:url value="/resources/vendors/js/i18n/datatables/label_{language}.json" var="dataTablesLang">
  	<spring:param name="language" value="${lenguaje}" />
  </spring:url>  
  
  
  <c:set var="welcome"><spring:message code="welcome" /></c:set>
  <c:set var="heading"><spring:message code="heading" /></c:set>
  <c:set var="encday"><spring:message code="encday" /></c:set>
  <c:set var="encact"><spring:message code="encact" /></c:set>
  <c:set var="encinact"><spring:message code="encinact" /></c:set>

<script>
$(function(){
  'use strict';

  toastr.info("${heading}", "${welcome}", {
    closeButton: true,
    progressBar: true,
  });

  var fechas = [];
  var encuestas = [];
  var activas = [];

  <c:forEach var="encuesta" items="${datosEncuestasxFecha}">
  	fechas.push([("${encuesta[0]}").substr(0,10)]);
  	encuestas.push(["${encuesta[1]}"]);
  	activas.push(["${encuesta[3]}"]);
  </c:forEach>

  var dataSet1 = {
    labels: fechas,
    datasets: [
      {
        type: 'line',
        label: "${encact}",
        backgroundColor: 'transparent',
        borderColor: 'rgba(0,0,0,0.3)',
        pointBackgroundColor: '#fff',
        pointBorderColor: 'rgba(0,0,0,0.3)',
        pointHoverBackgroundColor: '#fff',
        borderWidth: 2,
        data: activas
      },
      {
        type: 'bar',
        label: "${encday}",
        backgroundColor: '#ECECEC',
        borderColor: '#ECECEC',
        pointHoverBackgroundColor: '#fff',
        data: encuestas
      }
    ]
  };

  var options = {
    responsive: true,
    maintainAspectRatio: false,
    scales: {
      xAxes: [{
        gridLines: {
          drawOnChartArea: false,
        }
      }],
      yAxes: [{
        ticks: {
          beginAtZero: true,
          maxTicksLimit: 5,
        }
      }]
    },
    elements: {
      point: {
        radius: 4,
        hitRadius: 10,
        hoverRadius: 4,
        hoverBorderWidth: 3,
      },
      line: {
        tension: 0.00001,
      }
    },
    legend: {
      display: false
    }
  };

  var ctx = $('#dates-chart');
  var mainChart = new Chart(ctx, {
    type: 'bar',
    data: dataSet1,
    options: options
  });

  var segmentos = [];
  var encuestassegact = [];
  var encuestasseginact = [];

  <c:forEach var="encuestaseg" items="${datosEncuestasxSegmento}">
  	segmentos.push(["${encuestaseg[0]}"]);
  	encuestasseginact.push(["${encuestaseg[2]}"]);
  	encuestassegact.push(["${encuestaseg[3]}"]);
  </c:forEach>

  var barChartData = {
    labels : segmentos,
    datasets : [
      {
    	label: "${encact}",  
        backgroundColor : 'rgba(48, 48, 48, 0.5)',
        borderColor : 'rgba(220,220,220,0.8)',
        highlightFill: 'rgba(220,220,220,0.75)',
        highlightStroke: 'rgba(220,220,220,1)',
        data : encuestassegact
      },
      {
	   	label: "${encinact}",
        backgroundColor : 'rgba(151,187,205,0.5)',
        borderColor : 'rgba(151,187,205,0.8)',
        highlightFill : 'rgba(151,187,205,0.75)',
        highlightStroke : 'rgba(151,187,205,1)',
        data : encuestasseginact
      }
    ]
  }
  var ctx = document.getElementById('segments-chart');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: {
      responsive: true,
      "scales":{"yAxes":[{"ticks":{"beginAtZero":true}}]}
    }
  });


  var muncipios = [];
  var encuestasmunact = [];
  var encuestasmuninact = [];

  <c:forEach var="encuestamun" items="${datosEncuestasxMunicipio}">
  	muncipios.push(["${encuestamun[0]}"]);
  	encuestasmuninact.push(["${encuestamun[2]}"]);
  	encuestasmunact.push(["${encuestamun[3]}"]);
  </c:forEach>

  var barChartData2 = {
    labels : muncipios,
    datasets : [
      {
    	label: "${encact}",  
        backgroundColor : 'rgba(48, 48, 48, 0.5)',
        borderColor : 'rgba(220,220,220,0.8)',
        highlightFill: 'rgba(220,220,220,0.75)',
        highlightStroke: 'rgba(220,220,220,1)',
        data : encuestasmunact
      },
      {
	   	label: "${encinact}",
        backgroundColor : 'rgba(151,187,205,0.5)',
        borderColor : 'rgba(151,187,205,0.8)',
        highlightFill : 'rgba(151,187,205,0.75)',
        highlightStroke : 'rgba(151,187,205,1)',
        data : encuestasmuninact
      }
    ]
  }
  var ctx = document.getElementById('muns-chart');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData2,
    options: {
      responsive: true,
      "scales":{"yAxes":[{"ticks":{"beginAtZero":true}}]}
    }
  });

  var departamentos = [];
  var encuestasdepact = [];
  var encuestasdepinact = [];

  <c:forEach var="encuestadep" items="${datosEncuestasxDepartamento}">
  	departamentos.push(["${encuestadep[0]}"]);
  	encuestasdepinact.push(["${encuestadep[2]}"]);
  	encuestasdepact.push(["${encuestadep[3]}"]);
  </c:forEach>

  var barChartData3 = {
    labels : departamentos,
    datasets : [
      {
    	label: "${encact}",  
        backgroundColor : 'rgba(48, 48, 48, 0.5)',
        borderColor : 'rgba(220,220,220,0.8)',
        highlightFill: 'rgba(220,220,220,0.75)',
        highlightStroke: 'rgba(220,220,220,1)',
        data : encuestasmunact
      },
      {
	   	label: "${encinact}",
        backgroundColor : 'rgba(151,187,205,0.5)',
        borderColor : 'rgba(151,187,205,0.8)',
        highlightFill : 'rgba(151,187,205,0.75)',
        highlightStroke : 'rgba(151,187,205,1)',
        data : encuestasmuninact
      }
    ]
  }
  var ctx = document.getElementById('deps-chart');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData3,
    options: {
      responsive: true,
      "scales":{"yAxes":[{"ticks":{"beginAtZero":true}}]}
    }
  });

  var regiones = [];
  var encuestasregact = [];

  <c:forEach var="encuestareg" items="${datosEncuestasxRegion}">
  	regiones.push(["${encuestareg[0]}"]);
  	encuestasregact.push(["${encuestareg[3]}"]);
  </c:forEach>	
  
  var pieData = {
    labels: regiones,
    datasets: [{
      data: encuestasregact,
      backgroundColor: [
        '#877264',
        '#bdbfab',
        '#538eac'
      ],
      hoverBackgroundColor: [
        '#877264',
        '#bdbfab',
        '#538eac'
      ]
    }]
  };
  var ctx = document.getElementById('regs-chart');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: pieData,
    options: {
      responsive: true
    }
  });


  var procedencias = [];
  var encuestasproact = [];

  <c:forEach var="encuestapro" items="${datosEncuestasxProcedencia}">
  	procedencias.push(["${encuestapro[0]}"]);
  	encuestasproact.push(["${encuestapro[3]}"]);
  </c:forEach>	
  
  var pieData = {
    labels: procedencias,
    datasets: [{
      data: encuestasproact,
      backgroundColor: [
        '#877264',
        '#bdbfab'
      ],
      hoverBackgroundColor: [
        '#877264',
        '#bdbfab'
      ]
    }]
  };
  var ctx = document.getElementById('proc-chart');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: pieData,
    options: {
      responsive: true
    }
  });

  var sexos = [];
  var encuestassexact = [];

  <c:forEach var="encuestasex" items="${datosEncuestasxSexo}">
  	sexos.push(["${encuestasex[0]}"]);
  	encuestassexact.push(["${encuestasex[1]}"]);
  </c:forEach>	
  
  var pieData = {
    labels: sexos,
    datasets: [{
      data: encuestassexact,
      backgroundColor: [
        '#877264',
        '#bdbfab'
      ],
      hoverBackgroundColor: [
        '#877264',
        '#bdbfab'
      ]
    }]
  };
  var ctx = document.getElementById('sexo-chart');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: pieData,
    options: {
      responsive: true
    }
  });
  
});
</script>

</body>
</html>