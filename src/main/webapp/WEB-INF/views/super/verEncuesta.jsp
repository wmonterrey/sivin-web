<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<jsp:include page="../fragments/headTag.jsp" />
<!-- Styles required by this views -->
<spring:url value="/resources/vendors/css/dataTables.bootstrap4.min.css" var="dataTablesCSS" />
<link href="${dataTablesCSS}" rel="stylesheet" type="text/css"/>
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
        <li class="breadcrumb-item"><a href="<spring:url value="/super/encuestas/" htmlEscape="true "/>"><spring:message code="supenc" /></a></li>
        <li class="breadcrumb-item active"><c:out value="${encuesta.codigo}" /></li>
        <!-- Breadcrumb Menu-->
        <li class="breadcrumb-menu d-md-down-none">
          <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
            <a class="btn" href="#"><i class="icon-speech"></i></a>
            <a class="btn" href="<spring:url value="/" htmlEscape="true "/>"><i class="icon-graph"></i>&nbsp;<spring:message code="dashboard" /></a>
            <a class="btn" href="<spring:url value="/logout" htmlEscape="true" />"><i class="icon-logout"></i>&nbsp;<spring:message code="logout" /></a>
          </div>
        </li>
      </ol>
	  <!-- Container -->
      <div class="container-fluid">
      	<div class="animated fadeIn">

          	<div class="row">
	            <div class="col-md-4">
	              <div class="card">
	                <div class="card-header">
	                  <i class="icon-note"></i>&nbsp;<strong><spring:message code="encuesta" /></strong>
	                </div>
	                	<div class="card-body">
		                	<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="codigo" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.codigo}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="enabled" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong>
			                        	<c:choose>
											<c:when test="${encuesta.pasive=='0'.charAt(0)}">
												<strong><spring:message code="CAT_SINO_SI" /></strong>
											</c:when>
											<c:otherwise>
												<strong><spring:message code="CAT_SINO_NO" /></strong>
											</c:otherwise>
										</c:choose>
			                        </strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="jefeFamilia" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.jefeFamilia}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="ZON_REP_5" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.segmento.comunidad}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="ZON_REP_4" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.segmento.municipio}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="ZON_REP_3" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.segmento.departamento}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="encuestador" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.encuestador.nombre}" /></strong></p>
			                      </div>
			                    </div>
			                    <div class="form-group row">
			                      <label class="col-md-3 col-form-label"><spring:message code="supervisor" />:</label>
			                      <div class="col-md-9">
			                        <p class="form-control-static"><strong><c:out value="${encuesta.supervisor.nombre}" /></strong></p>
			                      </div>
			                    </div>
			                    <spring:url value="/super/desEncuesta/{ident}/" var="disableUrl"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
                            	<spring:url value="/super/habEncuesta/{ident}/" var="enableUrl"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
			                    <c:choose>
									<c:when test="${encuesta.pasive=='0'.charAt(0)}">
										<a href="#" class="btn btn-outline-primary btn-sm desact" data-toggle="modal" data-whatever="${fn:escapeXml(disableUrl)}"><i class="fa fa-trash-o"></i>&nbsp;<spring:message code="disable"/></a>
									</c:when>
									<c:otherwise>
										<a href="#" class="btn btn-outline-primary btn-sm act" data-toggle="modal" data-whatever="${fn:escapeXml(enableUrl)}"><i class="fa fa-check"></i>&nbsp;<spring:message code="enable" /></a>
									</c:otherwise>
								</c:choose>
								<spring:url value="/super/supEncuesta/{ident}/" var="supervisarUrl"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
								<a href="${fn:escapeXml(supervisarUrl)}" class="btn btn-outline-primary btn-sm"><i class="fa fa-check"></i>&nbsp;<spring:message code="super" /></a>
		                	</form>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="card">
	                <div class="card-header">
	                  <i class="icon-note"></i>&nbsp;<strong><spring:message code="enc_sec" /></strong>
	                </div>
	                	<div class="card-body">
	                		<spring:url value="/super/encuestas/editEncuesta/identificacion/{ident}/" var="editIdentificacionEncuesta"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editIdentificacionEncuesta)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_home" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/secciona/{ident}/" var="editSeccionA"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionA)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_seca" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/seccionb/{ident}/" var="editSeccionB"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionB)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_secb" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/seccionc/{ident}/" var="editSeccionC"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionC)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_secc" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/secciond/{ident}/" var="editSeccionD"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionD)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_secd" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/seccione/{ident}/" var="editSeccionE"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionE)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_sece" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/seccionf/{ident}/" var="editSeccionF"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionF)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_secf" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/secciong/{ident}/" var="editSeccionG"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionG)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_secg" /></a>
	                		<spring:url value="/super/encuestas/editEncuesta/seccionh/{ident}/" var="editSeccionH"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
	                		<a href="${fn:escapeXml(editSeccionH)}" class="btn btn-secondary btn-lg btn-block"><spring:message code="enc_sech" /></a>
						</div>
					</div>
				</div>
	            <!--/.col-->
         	</div>
         	
            <div class="row">
	            <div class="col-md-12">
	              <div class="card">
	                <div class="card-header">
	                  <i class="icon-pencil"></i>&nbsp;<strong><spring:message code="audittrail" /></strong>
	                </div>
	                <div class="card-body">
	                	<table id="lista_cambios" class="table table-striped table-bordered datatable" width="100%">
			                <thead>
			                	<tr>
									<th><spring:message code="entityClass" /></th>
									<th><spring:message code="entityName" /></th>
									<th><spring:message code="entityProperty" /></th>
									<th><spring:message code="entityPropertyOldValue" /></th>
									<th><spring:message code="entityPropertyNewValue" /></th>
									<th><spring:message code="modifiedBy" /></th>
									<th><spring:message code="dateModified" /></th>
			                	</tr>
			                </thead>
			                <tbody>
							<c:forEach items="${bitacora}" var="cambio">
								<tr>
									<td><spring:message code="${cambio.entityClass}" /></td>
									<td><c:out value="${cambio.entityName}" /></td>
									<td><c:out value="${cambio.entityProperty}" /></td>
									<td><c:out value="${cambio.entityPropertyOldValue}" /></td>
									<td><c:out value="${cambio.entityPropertyNewValue}" /></td>
									<td><c:out value="${cambio.username}" /></td>
									<td><c:out value="${cambio.operationDate}" /></td>
								</tr>
							</c:forEach>
			                </tbody>
			            </table>
	                </div>
	              </div>
	            </div>
            </div>
		</div>
      </div>
      <!-- /.container-fluid -->
      <!-- Modal -->
  	  <div class="modal fade" id="basic" tabindex="-1" data-role="basic" data-backdrop="static" data-aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="titulo"></div>
				</div>
				<div class="modal-body">
					<input type="hidden" id="accionUrl"/>
					<div id="cuerpo">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="cancel" /></button>
					<button type="button" class="btn btn-info" onclick="ejecutarAccion()"><spring:message code="ok" /></button>
				</div>
			</div>
			<!-- /.modal-content -->
	    </div>
	  <!-- /.modal-dialog -->
  	  </div>
    </main>
  </div>
  <!-- Pie de p�gina -->
  <jsp:include page="../fragments/bodyFooter.jsp" />

  <!-- Bootstrap and necessary plugins -->
  <jsp:include page="../fragments/corePlugins.jsp" />

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
  
  <!-- Plugins and scripts required by this views -->
  <spring:url value="/resources/vendors/js/jquery.validate.min.js" var="JQueryValidate" />
  <script src="${JQueryValidate}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/i18n/validation/messages_{language}.js" var="jQValidationLoc">
      <spring:param name="language" value="${lenguaje}" />
  </spring:url>
  <script src="${jQValidationLoc}"></script>
  <spring:url value="/resources/vendors/js/i18n/datatables/label_{language}.json" var="dataTablesLang">
  	<spring:param name="language" value="${lenguaje}" />
  </spring:url>
  <spring:url value="/resources/vendors/js/jquery.dataTables.min.js" var="dataTablesSc" />
  <script src="${dataTablesSc}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/dataTables.bootstrap4.min.js" var="dataTablesBsSc" />
  <script src="${dataTablesBsSc}" type="text/javascript"></script>
  
  <c:set var="encuestaEnabledLabel"><spring:message code="encuestaEnabled" /></c:set>
  <c:set var="encuestaDisabledLabel"><spring:message code="encuestaDisabled" /></c:set>
  <c:set var="habilitar"><spring:message code="enable" /></c:set>
  <c:set var="deshabilitar"><spring:message code="disable" /></c:set>
  <c:set var="confirmar"><spring:message code="confirm" /></c:set>
  
  <script>
    $(function(){
	  $('.datatable').DataTable({
          "oLanguage": {
              "sUrl": "${dataTablesLang}"
          },
          "scrollX": true,
          "lengthMenu": [[5,10, 25, 50], [5,10, 25, 50]]
      });
	  $('.datatable').attr('style', 'border-collapse: collapse !important');
	});

    if ("${encuestaHabilitada}"){
		toastr.info("${encuestaEnabledLabel}", "${codigoEncuesta}", {
		    closeButton: true,
		    progressBar: true,
		  } );
	}
	if ("${encuestaDeshabilitada}"){
		toastr.error("${encuestaDisabledLabel}", "${codigoEncuesta}" , {
		    closeButton: true,
		    progressBar: true,
		  });
	}

	$(".act").click(function(){ 
		var titHab = $(this).data('whatever').substr(0,$(this).data('whatever').length-1);
		$('#accionUrl').val($(this).data('whatever'));
    	$('#titulo').html('<h2 class="modal-title">'+"${confirmar}"+'</h2>');
    	$('#cuerpo').html('<h3>'+"${habilitar}"+'?</h3>');
    	$('#basic').modal('show');
    });
    
    $(".desact").click(function(){ 
        var titDes = $(this).data('whatever').substr(0,$(this).data('whatever').length-1);
    	$('#accionUrl').val($(this).data('whatever'));
    	$('#titulo').html('<h2 class="modal-title">'+"${confirmar}"+'</h2>');
    	$('#cuerpo').html('<h3>'+"${deshabilitar}"+'?</h3>');
    	$('#basic').modal('show');
    });

    function ejecutarAccion() {
		window.location.href = $('#accionUrl').val();		
	}

  </script>
</body>
</html>