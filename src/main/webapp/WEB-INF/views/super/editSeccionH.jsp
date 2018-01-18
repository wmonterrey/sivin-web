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
                  <i class="icon-note"></i> <spring:message code="edit" /> <spring:message code="enc_sech" />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-8">
                    	<spring:url value="/super/encuestas/saveSeccionHEncuesta/" var="saveUrl"></spring:url>
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
		                    <div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsAzuc" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAzuc" path="patConsAzuc" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsAzuc}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAzucFrec" path="patConsAzucFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsAzucFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsSal" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsSal" path="patConsSal" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsSal}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsSalFrec" path="patConsSalFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsSalFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsArroz" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsArroz" path="patConsArroz" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsArroz}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsArrozFrec" path="patConsArrozFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsArrozFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsAcei" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAcei" path="patConsAcei" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsAcei}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAceiFrec" path="patConsAceiFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsAceiFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsFri" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsFri" path="patConsFri" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsFri}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsFriFrec" path="patConsFriFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsFriFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCebo" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCebo" path="patConsCebo" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCebo}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCeboFrec" path="patConsCeboFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCeboFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsChi" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsChi" path="patConsChi" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsChi}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsChiFrec" path="patConsChiFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsChiFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsQue" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsQue" path="patConsQue" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsQue}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsQueFrec" path="patConsQueFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsQueFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCafe" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCafe" path="patConsCafe" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCafe}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCafeFrec" path="patConsCafeFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCafeFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsTor" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsTor" path="patConsTor" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsTor}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsTorFrec" path="patConsTorFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsTorFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCar" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCar" path="patConsCar" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCar}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarFrec" path="patConsCarFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCarFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsHue" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsHue" path="patConsHue" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsHue}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsHueFrec" path="patConsHueFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsHueFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPan" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPan" path="patConsPan" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPan}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPanFrec" path="patConsPanFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPanFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsBan" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsBan" path="patConsBan" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsBan}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsBanFrec" path="patConsBanFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsBanFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPanDul" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPanDul" path="patConsPanDul" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPanDul}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPanDulFrec" path="patConsPanDulFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPanDulFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPla" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPla" path="patConsPla" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPla}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPlaFrec" path="patConsPlaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPlaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPapa" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPapa" path="patConsPapa" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPapa}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPapaFrec" path="patConsPapaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPapaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsLec" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsLec" path="patConsLec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsLec}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsLecFrec" path="patConsLecFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsLecFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsSalTom" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsSalTom" path="patConsSalTom" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsSalTom}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsSalTomFrec" path="patConsSalTomFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsSalTomFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsGas" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsGas" path="patConsGas" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsGas}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsGasFrec" path="patConsGasFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsGasFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCarRes" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarRes" path="patConsCarRes" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCarRes}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarResFrec" path="patConsCarResFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCarResFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsAvena" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAvena" path="patConsAvena" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsAvena}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAvenaFrec" path="patConsAvenaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsAvenaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsNaran" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsNaran" path="patConsNaran" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsNaran}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsNaranFrec" path="patConsNaranFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsNaranFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPasta" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPasta" path="patConsPasta" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPasta}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPastaFrec" path="patConsPastaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPastaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsAyote" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAyote" path="patConsAyote" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsAyote}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAyoteFrec" path="patConsAyoteFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsAyoteFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsMagg" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMagg" path="patConsMagg" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsMagg}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMaggFrec" path="patConsMaggFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsMaggFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsFrut" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsFrut" path="patConsFrut" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsFrut}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsFrutFrec" path="patConsFrutFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsFrutFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsRaic" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsRaic" path="patConsRaic" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsRaic}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsRaicFrec" path="patConsRaicFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsRaicFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsMenei" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMenei" path="patConsMenei" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsMenei}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMeneiFrec" path="patConsMeneiFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsMeneiFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsRepollo" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsRepollo" path="patConsRepollo" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsRepollo}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsRepolloFrec" path="patConsRepolloFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsRepolloFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsZana" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsZana" path="patConsZana" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsZana}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsZanaFrec" path="patConsZanaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsZanaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPinolillo" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPinolillo" path="patConsPinolillo" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPinolillo}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPinolilloFrec" path="patConsPinolilloFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPinolilloFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsOVerd" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsOVerd" path="patConsOVerd" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsOVerd}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsOVerdFrec" path="patConsOVerdFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsOVerdFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsPesc" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPesc" path="patConsPesc" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsPesc}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsPescFrec" path="patConsPescFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsPescFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsAlimComp" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAlimComp" path="patConsAlimComp" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsAlimComp}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsAlimCompFrec" path="patConsAlimCompFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsAlimCompFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsLecPol" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsLecPol" path="patConsLecPol" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsLecPol}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsLecPolFrec" path="patConsLecPolFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsLecPolFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCarCer" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarCer" path="patConsCarCer" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCarCer}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarCerFrec" path="patConsCarCerFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCarCerFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsEmb" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsEmb" path="patConsEmb" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsEmb}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsEmbFrec" path="patConsEmbFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsEmbFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsMar" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMar" path="patConsMar" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsMar}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsMarFrec" path="patConsMarFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsMarFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
		                  	</div>
		                  	<div class="row">
		                    	<div class="col-md-6">
		                    		<label><spring:message code="patConsCarCaza" /></label>
		                    	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarCaza" path="patConsCarCaza" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${sinos}" var="sino">
												<c:choose> 
													<c:when test="${sino.catKey eq encuesta.patConsCarCaza}">
														<option selected value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${sino.catKey}"><spring:message code="${sino.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
			                  	</div>
	                    		<div class="col-md-3">
				                    <fieldset class="form-group">
					                    <form:select name="patConsCarCazaFrec" path="patConsCarCazaFrec" class="form-control select2-single">
					                    	<option value=""><spring:message code="enc_blank"/></option>
					                    	<c:forEach items="${frecscon}" var="freccon">
												<c:choose> 
													<c:when test="${freccon.catKey eq encuesta.patConsCarCazaFrec}">
														<option selected value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:when>
													<c:otherwise>
														<option value="${freccon.catKey}"><spring:message code="${freccon.messageKey}" /></option>
													</c:otherwise>
												</c:choose> 
											</c:forEach>
					                    </form:select>
				                  	</fieldset>
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