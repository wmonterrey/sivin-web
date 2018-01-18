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
                  <i class="icon-note"></i> <spring:message code="edit" /> <spring:message code="enc_secd" />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-8">
                    	<spring:url value="/super/encuestas/saveSeccionDEncuesta/" var="saveUrl"></spring:url>
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
			                    <label><spring:message code="hierron" /></label>
			                    <form:select name="hierron" path="hierron" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.hierron}">
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
		                        <span class="input-group-addon"><spring:message code="thierrocant" /></span>
		                        <form:input name="thierrocant" path="thierrocant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="thierround" /></label>
			                    <form:select name="thierround" path="thierround" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${hierrotiempos}" var="htiem">
										<c:choose> 
											<c:when test="${htiem.catKey eq encuesta.thierround}">
												<option selected value="${htiem.catKey}"><spring:message code="${htiem.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${htiem.catKey}"><spring:message code="${htiem.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fhierro" /></span>
		                        <form:input name="fhierro" path="fhierro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="ghierro" /></label>
			                    <form:select name="ghierro" path="ghierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${gotas}" var="gota">
										<c:choose> 
											<c:when test="${gota.catKey eq encuesta.ghierro}">
												<option selected value="${gota.catKey}"><spring:message code="${gota.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${gota.catKey}"><spring:message code="${gota.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="donhierro" /></label>
			                    <form:select path="donhierro" name="donhierro" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${lugares}" var="hlugar">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.donhierro, hlugar.catKey)}">
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
		                        <span class="input-group-addon"><spring:message code="donhierrobesp" /></span>
		                        <form:input name="donhierrobesp" path="donhierrobesp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="donhierrofesp" /></span>
		                        <form:input name="donhierrofesp" path="donhierrofesp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="fuhierro" /></label>
			                    <form:select name="fuhierro" path="fuhierro" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonts}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.fuhierro}">
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
		                        <span class="input-group-addon"><spring:message code="fuhierror" /></span>
		                        <fmt:formatDate value="${encuesta.fuhierror}" var="datefuhierror" pattern="MM/dd/yyyy" />
		                        <form:input name="fuhierror" path="fuhierror" value="${datefuhierror}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fauhierror" /></span>
		                        <fmt:formatDate value="${encuesta.fauhierror}" var="datefauhierror" pattern="MM/dd/yyyy" />
		                        <form:input name="fauhierror" path="fauhierror" value="${datefauhierror}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="nvita" /></label>
			                    <form:select name="nvita" path="nvita" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.nvita}">
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
		                        <span class="input-group-addon"><spring:message code="ncvita" /></span>
		                        <form:input name="ncvita" path="ncvita" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="tvitacant" /></span>
		                        <form:input name="tvitacant" path="tvitacant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tvitaund" /></label>
			                    <form:select name="tvitaund" path="tvitaund" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${vitatiempos}" var="htiem">
										<c:choose> 
											<c:when test="${htiem.catKey eq encuesta.tvitaund}">
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
			                    <label><spring:message code="ndvita" /></label>
			                    <form:select name="ndvita" path="ndvita" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${lugaresvita}" var="lugar">
										<c:choose> 
											<c:when test="${lugar.catKey eq encuesta.ndvita}">
												<option selected value="${lugar.catKey}"><spring:message code="${lugar.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${lugar.catKey}"><spring:message code="${lugar.messageKey}" /></option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
			                    </form:select>
		                  	</fieldset>
		                  	<div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="ndvitao" /></span>
		                        <form:input name="ndvitao" path="ndvitao" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                  	<fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="tdvita" /></label>
			                    <form:select name="tdvita" path="tdvita" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonts}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.tdvita}">
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
		                        <span class="input-group-addon"><spring:message code="fuvita" /></span>
		                        <fmt:formatDate value="${encuesta.fuvita}" var="datefuvita" pattern="MM/dd/yyyy" />
		                        <form:input name="fuvita" path="fuvita" value="${datefuvita}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                    <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="fauvita" /></span>
		                        <fmt:formatDate value="${encuesta.fauvita}" var="datefauvita" pattern="MM/dd/yyyy" />
		                        <form:input name="fauvita" path="fauvita" value="${datefauvita}" class="form-control date date-picker" data-date-format="mm/dd/yyyy" data-date-end-date="+0d"/>
		                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="ncnut" /></label>
			                    <form:select name="ncnut" path="ncnut" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.ncnut}">
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
		                        <span class="input-group-addon"><spring:message code="ncnutcant" /></span>
		                        <form:input name="ncnutcant" path="ncnutcant" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="ncnutund" /></label>
			                    <form:select name="ncnutund" path="ncnutund" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${hierrotiempos}" var="htiem">
										<c:choose> 
											<c:when test="${htiem.catKey eq encuesta.ncnutund}">
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
			                    <label><spring:message code="doncnut" /></label>
			                    <form:select path="doncnut" name="doncnut" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${lugaresmn}" var="hlugar">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.doncnut, hlugar.catKey)}">
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
		                        <span class="input-group-addon"><spring:message code="doncnutfotro" /></span>
		                        <form:input name="doncnutfotro" path="doncnutfotro" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
	                    		<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="parasit" /></label>
			                    <form:select name="parasit" path="parasit" class="form-control select2-single">
			                    	<option value=""><spring:message code="enc_blank"/></option>
			                    	<c:forEach items="${sinonrs}" var="sinonr">
										<c:choose> 
											<c:when test="${sinonr.catKey eq encuesta.parasit}">
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
		                        <span class="input-group-addon"><spring:message code="cvparas" /></span>
		                        <form:input name="cvparas" path="cvparas" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="mParasitario" /></label>
			                    <form:select path="mParasitario" name="mParasitario" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${medspar}" var="med">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.mParasitario, med.catKey)}">
												<option selected value="${med.catKey}"><spring:message code="${med.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${med.catKey}"><spring:message code="${med.messageKey}" /></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			                    </form:select>
			                </fieldset>
			                <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="otroMpEsp" /></span>
		                        <form:input name="otroMpEsp" path="otroMpEsp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="donMp" /></label>
			                    <form:select path="donMp" name="donMp" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${lugaresmp}" var="lug">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.donMp, lug.catKey)}">
												<option selected value="${lug.catKey}"><spring:message code="${lug.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${lug.catKey}"><spring:message code="${lug.messageKey}" /></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			                    </form:select>
			                </fieldset>
			                <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="otroDonMp" /></span>
		                        <form:input name="otroDonMp" path="otroDonMp" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
		                    <fieldset class="form-group">
			                 	<i class="fa fa-hand-o-up"></i>
			                    <label><spring:message code="evitarParasito" /></label>
			                    <form:select path="evitarParasito" name="evitarParasito" class="form-control select2-multiple" multiple="true">
			                    	<c:forEach items="${accionesep}" var="accion">
										<c:choose> 
											<c:when test="${fn:contains(encuesta.evitarParasito, accion.catKey)}">
												<option selected value="${accion.catKey}"><spring:message code="${accion.messageKey}" /></option>
											</c:when>
											<c:otherwise>
												<option value="${accion.catKey}"><spring:message code="${accion.messageKey}" /></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			                    </form:select>
			                </fieldset>
			                <div class="form-group">
		                      <div class="input-group">
		                        <span class="input-group-addon"><spring:message code="oEvitarParasito" /></span>
		                        <form:input name="oEvitarParasito" path="oEvitarParasito" readonly="false" class="form-control"/>
		                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
		                      </div>
		                    </div>
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