<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<jsp:include page="../fragments/headTag.jsp" />
<!-- Styles required by this views -->
<spring:url value="/resources/vendors/css/select2.min.css" var="select2css" />
<link href="${select2css}" rel="stylesheet" type="text/css"/>
<spring:url value="/resources/vendors/css/daterangepicker.css" var="dtrpcss" />
<link href="${dtrpcss}" rel="stylesheet" type="text/css"/>

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
  <jsp:include page="../fragments/bodyHeader.jsp" />
  <div class="app-body">
  	<!-- Navigation -->
  	<jsp:include page="../fragments/sideBar.jsp" />
    <!-- Main content -->
    <main class="main">

      <!-- Breadcrumb -->
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<spring:url value="/" htmlEscape="true "/>"><spring:message code="home" /></a></li>
        <li class="breadcrumb-item active">&nbsp;</li>
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
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <i class="icon-docs"></i> <spring:message code="reports" /> <spring:message code="house" />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                  	<div class="col-md-10">
	                  	<form action="#" autocomplete="off" id="report-form">
	           			  <fieldset class="form-group">
		                    <label><spring:message code="reports" /></label>
		                    <select id="reporte" name="reporte" class="form-control select2-single">
		                      <c:forEach items="${reportesDisp}" var="reporte">
		                      	<option value="${reporte.messageKey}"><spring:message code="${reporte.messageKey}" /></option>
		                      </c:forEach>
		                    </select>
		                    </select>
		                  </fieldset>
		                  <fieldset class="form-group">
			                  <label><spring:message code="byDate" /></label>
			                  <div class="input-group">
			                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			                    <input name="daterange" class="form-control" type="text">
			                  </div>
		                  </fieldset>
		                  <div class="row">
			                  <fieldset class="form-group col-sm-4">
			                    <label><spring:message code="byZone" /></label>
			                    <select id="zonas" name="zonas" class="form-control select2-single">
			                      <c:forEach items="${zonasRep}" var="zona">
			                      	<option value="${zona.messageKey}"><spring:message code="${zona.messageKey}" /></option>
			                      </c:forEach>
			                    </select>
			                    </select>
			                  </fieldset>
			                  <fieldset class="form-group col-sm-8">
			                    <label>&nbsp;</label>
			                    <select id="zonafiltrar" name="zonafiltrar" class="form-control select2-single">
			                    </select>
			                    </select>
			                  </fieldset>
		                  </div>
		                  <div class="row float-right mr-4" >  
		                    	<button type="submit" class="btn btn-primary" id="verreporte""><i class="fa fa-check"></i>&nbsp;<spring:message code="ok" /></button>
				          </div>
	                  	</form>
                  	</div>
                  </div>
                </div>
              </div>
			</div>
			</div>
			<div class="row">
            <div class="col-md-6">
            	<div class="card">
		            <div class="card-header">
		              <div class="card-actions">
		              </div>
		            </div>
		            <div class="card-body">
		              <table id="datos" class="table table-striped table-bordered datatable" width="100%">
		                <thead>
		                	<tr>
			                    <th><spring:message code="category" /></th>
			                    <th><spring:message code="value" /></th>
		                	</tr>
		                </thead>
		                <tbody>
		                </tbody>
		              </table>
		            </div>
		          </div>  
			</div>
			<div class="col-md-6">
				<div class="card">
	              <div class="card-header">
	                <div class="card-actions"></div>
	              </div>
	              <div class="card-body">
	                <div class="chart-wrapper">
	                  <canvas id="data-chart"></canvas>
	                </div>
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
  <jsp:include page="../fragments/bodyFooter.jsp" />

  <!-- Bootstrap and necessary plugins -->
  <jsp:include page="../fragments/corePlugins.jsp" />
  <jsp:include page="../fragments/bodyUtils.jsp" />

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

  <!-- Plugins and scripts required by this views -->
  <spring:url value="/resources/vendors/js/jquery.validate.min.js" var="JQueryValidate" />
  <script src="${JQueryValidate}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/i18n/validation/messages_{language}.js" var="jQValidationLoc">
      <spring:param name="language" value="${lenguaje}" />
  </spring:url>
  <script src="${jQValidationLoc}"></script>
  <spring:url value="/resources/vendors/js/jquery.dataTables.min.js" var="dataTablesSc" />
  <script src="${dataTablesSc}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/dataTables.bootstrap4.min.js" var="dataTablesBsSc" />
  <script src="${dataTablesBsSc}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/i18n/datatables/label_{language}.json" var="dataTablesLang">
  	<spring:param name="language" value="${lenguaje}" />
  </spring:url>
  <spring:url value="/resources/vendors/js/select2.min.js" var="Select2" />
  <script src="${Select2}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/moment.min.js" var="moment" />
  <script src="${moment}" type="text/javascript"></script>  
  <spring:url value="/resources/vendors/js/daterangepicker.min.js" var="drPicker" />
  <script src="${drPicker}" type="text/javascript"></script>
  
  <!-- Custom scripts required by this view -->
  <spring:url value="/resources/js/views/Reports.js" var="processReport" />
  <script src="${processReport}"></script>

<spring:url value="/opciones/municipios" var="opcMuniUrl"/>
<spring:url value="/opciones/regiones" var="opcRegUrl"/>
<spring:url value="/opciones/departamentos" var="opcDepUrl"/>
<spring:url value="/opciones/segmentos" var="opcSegUrl"/>
<spring:url value="/opciones/procedencias" var="opcProcUrl"/>
<spring:url value="/reportes/house/" var="reporteUrl"/>
<c:set var="successmessage"><spring:message code="process.success" /></c:set>
<c:set var="errormessage"><spring:message code="process.errors" /></c:set>
<c:set var="waitmessage"><spring:message code="process.wait" /></c:set>
<c:set var="noResults"><spring:message code="noResults" /></c:set>

<script>
	jQuery(document).ready(function() {
		var parametros = {opcMuniUrl: "${opcMuniUrl}", opcSegUrl: "${opcSegUrl}", opcRegUrl: "${opcRegUrl}", opcDepUrl: "${opcDepUrl}",
				opcProcUrl: "${opcProcUrl}",reporteUrl: "${reporteUrl}",successmessage: "${successmessage}",
				errormessage: "${errormessage}",waitmessage: "${waitmessage}" ,dataTablesLang: "${dataTablesLang}",noResults: "${noResults}"
		};
		ProcessReport.init(parametros);
	});
</script>

<script>

</script>
</body>
</html>