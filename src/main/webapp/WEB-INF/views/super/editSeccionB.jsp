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
                  <i class="icon-note"></i> <spring:message code="edit" /> <spring:message code="enc_secb" />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-8">
                    	<spring:url value="/super/encuestas/saveSeccionBEncuesta/" var="saveUrl"></spring:url>
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
			                    <label><spring:message code="conocefnac" /></label>
			                    <form:select name="conoceFNac" path="conoceFNac" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.conoceFNac}">
												<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fnacent" /></span>
		                        <fmt:formatDate value="${encuesta.fnacEnt}" var="datefnacEnt" pattern="MM/dd/yyyy" />
		                        <form:input name="fnacEnt" path="fnacEnt" value="${datefnacEnt}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="edadent" /></span>
		                        <form:input name="edadEnt" path="edadEnt" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="leerent" /></label>
			                    <form:select name="leerEnt" path="leerEnt" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.leerEnt}">
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
			                    <label><spring:message code="escribirent" /></label>
			                    <form:select name="escribirEnt" path="escribirEnt" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.escribirEnt}">
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
			                    <label><spring:message code="leeescent" /></label>
			                    <form:select name="leeescEnt" path="leeescEnt" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.leeescEnt}">
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
			                    <label><spring:message code="nivelent" /></label>
			                    <form:select name="nivelEnt" path="nivelEnt" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${niveles}" var="nivel">
										<c:choose> 
											<c:when test="${nivel.catKey eq encuesta.nivelEnt}">
												<option selected value="${nivel.catKey}"><spring:message code="${nivel.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${nivel.catKey}"><spring:message code="${nivel.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="gradoent" /></label>
			                    <form:select name="gradoEnt" path="gradoEnt" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${grados}" var="grado">
										<c:choose> 
											<c:when test="${grado.catKey eq encuesta.gradoEnt}">
												<option selected value="${grado.catKey}"><spring:message code="${grado.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${grado.catKey}"><spring:message code="${grado.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="entrealizada" /></label>
			                    <form:select name="entRealizada" path="entRealizada" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${entrevistados}" var="entrev">
										<c:choose> 
											<c:when test="${entrev.catKey eq encuesta.entRealizada}">
												<option selected value="${entrev.catKey}"><spring:message code="${entrev.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${entrev.catKey}"><spring:message code="${entrev.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="entemb" /></label>
			                    <form:select name="entEmb" path="entEmb" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.entEmb}">
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
			                    <label><spring:message code="entdioluz" /></label>
			                    <form:select name="entDioluz" path="entDioluz" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.entDioluz}">
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
			                    <label><spring:message code="enthieacfol" /></label>
			                    <form:select name="entHieacfol" path="entHieacfol" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.entHieacfol}">
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
		                        <span class="input-group-addon"><spring:message code="entmeseshierro" /></span>
		                        <form:input name="entMeseshierro" path="entMeseshierro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="entrechierro" /></label>
			                    <form:select name="entRecHierro" path="entRecHierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${hierrofrecs}" var="hfrec">
										<c:choose> 
											<c:when test="${hfrec.catKey eq encuesta.entRecHierro}">
												<option selected value="${hfrec.catKey}"><spring:message code="${hfrec.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${hfrec.catKey}"><spring:message code="${hfrec.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="entorechierro" /></span>
		                        <form:input name="entORecHierro" path="entORecHierro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="tiemhierro" /></span>
		                        <form:input name="tiemHierro" path="tiemHierro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tiemhierround" /></label>
			                    <form:select name="tiemHierroUnd" path="tiemHierroUnd" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${hierrotiempos}" var="htiem">
										<c:choose> 
											<c:when test="${htiem.catKey eq encuesta.tiemHierroUnd}">
												<option selected value="${htiem.catKey}"><spring:message code="${htiem.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${htiem.catKey}"><spring:message code="${htiem.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                    <fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="dondehierro" /></label>
			                    <form:select path="dondeHierro" name="dondeHierro" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${hierrolugares}" var="hlugar">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.dondeHierro, hlugar.catKey)}">
												<option selected value="${hlugar.catKey}"><spring:message code="${hlugar.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${hlugar.catKey}"><spring:message code="${hlugar.messageKey}" /></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			                    </form:select>
			                </fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="dondehierrobesp" /></span>
		                        <form:input name="dondeHierroBesp" path="dondeHierroBesp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="dondehierrofesp" /></span>
		                        <form:input name="dondeHierroFesp" path="dondeHierroFesp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tomadohierro" /></label>
			                    <form:select name="tomadoHierro" path="tomadoHierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinos}" var="sino">
										<c:choose> 
											<c:when test="${sino.catKey eq encuesta.tomadoHierro}">
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
			                    <label><spring:message code="vita" /></label>
			                    <form:select name="vita" path="vita" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.vita}">
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
			                    <label><spring:message code="tiempvita" /></label>
			                    <form:select name="tiempVita" path="tiempVita" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${vitas}" var="vit">
										<c:choose> 
											<c:when test="${vit.catKey eq encuesta.tiempVita}">
												<option selected value="${vit.catKey}"><spring:message code="${vit.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${vit.catKey}"><spring:message code="${vit.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="evitaemb" /></label>
			                    <form:select name="evitaEmb" path="evitaEmb" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${evitaembs}" var="evita">
										<c:choose> 
											<c:when test="${evita.catKey eq encuesta.evitaEmb}">
												<option selected value="${evita.catKey}"><spring:message code="${evita.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${evita.catKey}"><spring:message code="${evita.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="dondeantic" /></label>
			                    <form:select name="dondeAntic" path="dondeAntic" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${obtieneantics}" var="donde">
										<c:choose> 
											<c:when test="${donde.catKey eq encuesta.dondeAntic}">
												<option selected value="${donde.catKey}"><spring:message code="${donde.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${donde.catKey}"><spring:message code="${donde.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="nuevoemb" /></label>
			                    <form:select name="nuevoEmb" path="nuevoEmb" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.nuevoEmb}">
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
			                    <label><spring:message code="hierro" /></label>
			                    <form:select name="hierro" path="hierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.hierro}">
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
			                    <label><spring:message code="dhierro" /></label>
			                    <form:select name="dHierro" path="dHierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${obtieneantics}" var="donde">
										<c:choose> 
											<c:when test="${donde.catKey eq encuesta.dHierro}">
												<option selected value="${donde.catKey}"><spring:message code="${donde.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${donde.catKey}"><spring:message code="${donde.messageKey}" /></option>
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