<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:theme code="standard.app" var="cssSuffix" text="" />
<c:choose>
    <c:when test="${cssSuffix eq 'AVA'}">
        <jsp:directive.include file="AVA/casLoginView.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:directive.include file="CIVA/casLoginView.jsp" />
    </c:otherwise>
</c:choose>