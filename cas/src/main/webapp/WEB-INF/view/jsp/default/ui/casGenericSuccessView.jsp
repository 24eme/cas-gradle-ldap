<jsp:directive.include file="includes/top.jsp" />
  <div id="msg" class="success form-signin">
    <h2><spring:message code="screen.success.header" /></h2>
    <p style="text-align: left;"><spring:message code="screen.success.success" arguments="${principal.id}"/></p>
    <p style="text-align: left;"><spring:message code="screen.success.security" /></p>
  </div>
<jsp:directive.include file="includes/bottom.jsp" />
