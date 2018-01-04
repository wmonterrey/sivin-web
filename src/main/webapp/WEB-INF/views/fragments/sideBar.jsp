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
	                <li class="nav-item users">
	                    <a class="nav-link" href="<spring:url value="/admin/users/" htmlEscape="true "/>"><i class="icon-people"></i><spring:message code="users" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/encuestadores/" htmlEscape="true "/>"><i class="icon-note"></i><spring:message code="encuestadores" /></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="<spring:url value="/admin/supervisores/" htmlEscape="true "/>"><i class="icon-check"></i><spring:message code="supervisores" /></a>
	                </li>
	            </ul>
	        </li>
	        </sec:authorize>
	        <li class="nav-item">
                <a class="nav-link" href="<spring:url value="/logout" htmlEscape="true" />"><i class="icon-logout"></i><spring:message code="logout" /></a>
            </li>
        </ul>
    </nav>
    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div>