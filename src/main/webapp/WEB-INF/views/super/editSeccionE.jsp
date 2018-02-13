<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<jsp:include page="../fragments/headTag.jsp" />
<!-- Styles required by this views -->
<spring:url value="/resources/vendors/css/select2.min.css" var="select2css" />
<link href="${select2css}" rel="stylesheet" type="text/css"/>
<spring:url value="/resources/vendors/css/datepicker.css" var="datepickercss" />
<link href="${datepickercss}" rel="stylesheet" type="text/css"/>
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
        <li class="breadcrumb-item active"><c:out value="${encuesta.ident}" /></li>
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
                  <i class="icon-note"></i> <spring:message code="edit" /> <spring:message code="enc_sece" />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-8">
                    	<spring:url value="/super/encuestas/saveSeccionEEncuesta/" var="saveUrl"></spring:url>
                    	<spring:url value="/super/encuestas/{ident}/" var="verEncuesta"><spring:param name="ident" value="${encuesta.ident}" /></spring:url>
                    	<form:form id="encuesta-form" method="POST" action="${saveUrl}" modelAttribute="encuesta">
                    		<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="ident" /></span>
		                        <form:input path="ident" readonly="true" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="codigo" /></span>
		                        <form:input path="codigo" readonly="true" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fechaEntrevista" /></span>
		                        <form:input path="fechaEntrevista" readonly="true" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="nlactmat" /></label>
			                    <form:select name="nlactmat" path="nlactmat" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonas}" var="sinona">
										<c:choose> 
											<c:when test="${sinona.catKey eq encuesta.nlactmat}">
												<option selected value="${sinona.catKey}"><spring:message code="${sinona.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sinona.catKey}"><spring:message code="${sinona.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="sexlmat" /></label>
			                    <form:select name="sexlmat" path="sexlmat" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sexos}" var="sexo">
										<c:choose> 
											<c:when test="${sexo.catKey eq encuesta.sexlmat}">
												<option selected value="${sexo.catKey}"><spring:message code="${sexo.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sexo.catKey}"><spring:message code="${sexo.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="emeseslmat" /></span>
		                        <form:input name="emeseslmat" path="emeseslmat" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fnaclmat" /></span>
		                        <fmt:formatDate value="${encuesta.fnaclmat}" var="datefnaclmat" pattern="MM/dd/yyyy" />
		                        <form:input name="fnaclmat" path="fnaclmat" value="${datefnaclmat}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                  	
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="pecho" /></label>
			                    <form:select name="pecho" path="pecho" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.pecho}">
												<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="motNopecho" /></label>
			                    <form:select name="motNopecho" path="motNopecho" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${nodiopechos}" var="nodiopecho">
										<c:choose> 
											<c:when test="${nodiopecho.catKey eq encuesta.motNopecho}">
												<option selected value="${nodiopecho.catKey}"><spring:message code="${nodiopecho.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${nodiopecho.catKey}"><spring:message code="${nodiopecho.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="motNopechoOtro" /></span>
		                        <form:input name="motNopechoOtro" path="motNopechoOtro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="dapecho" /></label>
			                    <form:select name="dapecho" path="dapecho" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.dapecho}">
												<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tiempecho" /></label>
			                    <form:select name="tiempecho" path="tiempecho" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${tnacpechos}" var="tnacpecho">
										<c:choose> 
											<c:when test="${tnacpecho.catKey eq encuesta.tiempecho}">
												<option selected value="${tnacpecho.catKey}"><spring:message code="${tnacpecho.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${tnacpecho.catKey}"><spring:message code="${tnacpecho.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tiemmama" /></label>
			                    <form:select name="tiemmama" path="tiemmama" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${ttomapechos}" var="ttomapecho">
										<c:choose> 
											<c:when test="${ttomapecho.catKey eq encuesta.tiemmama}">
												<option selected value="${ttomapecho.catKey}"><spring:message code="${ttomapecho.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${ttomapecho.catKey}"><spring:message code="${ttomapecho.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="tiemmamaMins" /></span>
		                        <form:input name="tiemmamaMins" path="tiemmamaMins" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="dospechos" /></label>
			                    <form:select name="dospechos" path="dospechos" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinoavs}" var="sinoav">
										<c:choose> 
											<c:when test="${sinoav.catKey eq encuesta.dospechos}">
												<option selected value="${sinoav.catKey}"><spring:message code="${sinoav.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sinoav.catKey}"><spring:message code="${sinoav.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="vecespechodia" /></span>
		                        <form:input name="vecespechodia" path="vecespechodia" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="vecespechonoche" /></span>
		                        <form:input name="vecespechonoche" path="vecespechonoche" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="elmatexccant" /></span>
		                        <form:input name="elmatexccant" path="elmatexccant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="elmatexcund" /></label>
			                    <form:select name="elmatexcund" path="elmatexcund" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${tiemplmats}" var="tiemplmat">
										<c:choose> 
											<c:when test="${tiemplmat.catKey eq encuesta.elmatexcund}">
												<option selected value="${tiemplmat.catKey}"><spring:message code="${tiemplmat.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${tiemplmat.catKey}"><spring:message code="${tiemplmat.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="ediopechocant" /></span>
		                        <form:input name="ediopechocant" path="ediopechocant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="ediopechound" /></label>
			                    <form:select name="ediopechound" path="ediopechound" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${tiemppechos}" var="tiemppecho">
										<c:choose> 
											<c:when test="${tiemppecho.catKey eq encuesta.ediopechound}">
												<option selected value="${tiemppecho.catKey}"><spring:message code="${tiemppecho.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${tiemppecho.catKey}"><spring:message code="${tiemppecho.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="combeb" /></label>
			                    <form:select name="combeb" path="combeb" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.combeb}">
												<option selected value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="ealimcant" /></span>
		                        <form:input name="ealimcant" path="ealimcant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="ealimund" /></label>
			                    <form:select name="ealimund" path="ealimund" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${tiemppechos}" var="tiemppecho">
										<c:choose> 
											<c:when test="${tiemppecho.catKey eq encuesta.ealimund}">
												<option selected value="${tiemppecho.catKey}"><spring:message code="${tiemppecho.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${tiemppecho.catKey}"><spring:message code="${tiemppecho.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	
		                    <fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="bebeLiq" /></label>
			                    <form:select path="bebeLiq" name="bebeLiq" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${bebens}" var="beben">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.bebeLiq, beben.catKey)}">
												<option selected value="${beben.catKey}"><spring:message code="${beben.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${beben.catKey}"><spring:message code="${beben.messageKey}" /></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			                    </form:select>
			                </fieldset>
			                <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="reunionPeso" /></label>
			                    <form:select name="reunionPeso" path="reunionPeso" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.reunionPeso}">
												<option selected value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="quienReunionPeso" /></label>
			                    <form:select name="quienReunionPeso" path="quienReunionPeso" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${qreupesos}" var="qreupeso">
										<c:choose> 
											<c:when test="${qreupeso.catKey eq encuesta.quienReunionPeso}">
												<option selected value="${qreupeso.catKey}"><spring:message code="${qreupeso.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${qreupeso.catKey}"><spring:message code="${qreupeso.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="quienReunionPesoOtro" /></span>
		                        <form:input name="quienReunionPesoOtro" path="quienReunionPesoOtro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="assitioReunionPeso" /></label>
			                    <form:select name="assitioReunionPeso" path="assitioReunionPeso" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.assitioReunionPeso}">
												<option selected value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sinonr.catKey}"><spring:message code="${sinonr.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                    <div class="form-group">
	                          <button type="submit" class="btn btn-primary" id="guardar"><i class="fa fa-save"></i>&nbsp;<spring:message code="save" /></button>
	                          <a href="${fn:escapeXml(verEncuesta)}" class="btn btn-danger"><i class="fa fa-undo"></i>&nbsp;<spring:message code="cancel" /></a>
	                        </div>
                    	</form:form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>

      </div>
      <!-- /.conainer-fluid -->
    </main>
    
  </div>
  <!-- Pie de p�gina -->
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
  
  <!-- Plugins and scripts required by this views -->
  <spring:url value="/resources/vendors/js/jquery.validate.min.js" var="JQueryValidate" />
  <script src="${JQueryValidate}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/i18n/validation/messages_{language}.js" var="jQValidationLoc">
      <spring:param name="language" value="${lenguaje}" />
  </spring:url>
  <script src="${jQValidationLoc}"></script>
  <spring:url value="/resources/vendors/js/select2.min.js" var="Select2" />
  <script src="${Select2}" type="text/javascript"></script>
  <spring:url value="/resources/vendors/js/bootstrap-datepicker.js" var="datepicker" />
  <script src="${datepicker}" type="text/javascript"></script>
  
  <!-- Custom scripts required by this view -->
  <spring:url value="/resources/js/views/EditEncuesta.js" var="processEncuesta" />
  <script src="${processEncuesta}"></script>
  
  	<script>
		jQuery(document).ready(function() {
			ProcessEncuesta.init();
		});
	</script>
</body>
</html>