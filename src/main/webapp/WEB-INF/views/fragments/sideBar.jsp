<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" href="<spring:url value="/" htmlEscape="true "/>"><i class="icon-graph"></i><spring:message code="dashboard" /></a>
            </li>
            <sec:authorize url="/admin/">
            <li class="nav-item nav-dropdown administracion">
	            <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-settings"></i><spring:message code="admin" /></a>
	            <ul class="nav-dropdown-items">
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/users/" htmlEscape="true "/>"><i class="icon-people"></i><spring:message code="users" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/encuestadores/" htmlEscape="true "/>"><i class="icon-note"></i><spring:message code="encuestadores" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/supervisores/" htmlEscape="true "/>"><i class="icon-check"></i><spring:message code="supervisores" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/traduccion/" htmlEscape="true "/>"><i class="fa fa-flag"></i><spring:message code="translation" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/catalogos/" htmlEscape="true "/>"><i class="fa fa-archive"></i><spring:message code="seccatalogs" /></a>
	                </li>
	            </ul>
	        </li>
	        </sec:authorize>
	        <sec:authorize url="/super/">
            <li class="nav-item nav-dropdown supervisor">
	            <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-magnifier-add"></i><spring:message code="super" /></a>
	            <ul class="nav-dropdown-items">
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/super/encuestas/" htmlEscape="true "/>"><i class="icon-magnifier"></i><spring:message code="supenc" /></a>
	                </li>
	            </ul>
	        </li>
	        </sec:authorize>
            <sec:authorize url="/reportes/">
            <li class="nav-item nav-dropdown reportes">
	            <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-docs"></i><spring:message code="reports" /></a>
	            <ul class="nav-dropdown-items">
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/reportes/family/" htmlEscape="true "/>"><i class="icon-user-female"></i><spring:message code="family" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/reportes/house/" htmlEscape="true "/>"><i class="icon-home"></i><spring:message code="house" /></a>
	                </li>
	                <!-- li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/reportes/nutrition/" htmlEscape="true "/>"><i class="icon-basket"></i><spring:message code="nutrition" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/reportes/breastfeed/" htmlEscape="true "/>"><i class="icon-symbol-female"></i><spring:message code="breastfeed" /></a>
	                </li> -->
	            </ul>
	        </li>
	        </sec:authorize>
	        <sec:authorize url="/movil/">
            <li class="nav-item nav-dropdown descargas">
	            <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-screen-tablet"></i><spring:message code="downloads" /></a>
	            <ul class="nav-dropdown-items">
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/resources/apk/sivin-app.apk" htmlEscape="true "/>"><i class="icon-screen-smartphone"></i><spring:message code="sivin.app" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/resources/apk/BarcodeScanner4.31.apk" htmlEscape="true "/>"><i class="fa fa-barcode"></i><spring:message code="barcode.app" /></a>
	                </li>
	            </ul>
	        </li>
	        </sec:authorize>
	        <sec:authorize url="/exportar/">
	        <li class="nav-item">
                <a class="nav-link" href="<spring:url value="/exportar/" htmlEscape="true" />"><i class="icon-briefcase"></i><spring:message code="export" /></a>
            </li>
            </sec:authorize>
	        <li class="nav-item">
                <a class="nav-link" href="<spring:url value="/logout" htmlEscape="true" />"><i class="icon-logout"></i><spring:message code="logout" /></a>
            </li>
        </ul>
    </nav>
    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div>