<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:directive.include file="includes/top.jsp" />

<div id="cookiesDisabled" class="errors" style="display:none;">
    <h2><spring:message code="screen.cookies.disabled.title" /></h2>
    <p><spring:message code="screen.cookies.disabled.message" /></p>
</div>

<div class="box" id="login">
    <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true" class="form-signin">

	<h2>Espace professionnel</h2>
        <form:errors path="*" id="msg" cssClass="errors form-signin" element="div" htmlEscape="false" style="text-align: left"/>
	<h3>Entrez votre identifiant et votre mot de passe :</h3>

        <section class="row">
            <label for="username"><spring:message code="screen.welcome.label.netid" /></label>
            <c:choose>
                <c:when test="${not empty sessionScope.openIdLocalId}">
                    <strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
                    <input type="hidden" id="username" name="username" value="<c:out value="${sessionScope.openIdLocalId}" />" />
                </c:when>
                <c:otherwise>
                    <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                    <form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
                </c:otherwise>
            </c:choose>
        </section>

        <section class="row">
            <label for="password"><spring:message code="screen.welcome.label.password" /></label>
                <%--
                NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
                "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
                information, see the following web page:
                http://www.technofundo.com/tech/web/ie_autocomplete.html
                --%>
            <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
            <form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
            <span id="capslock-on" style="display:none;"><p><img src="images/warning.png" valign="top"> <spring:message code="screen.capslock.on" /></p></span>
        </section>

<!--
         <section class="row check">
                <input type="checkbox" name="rememberMe" id="rememberMe" value="true" tabindex="5"  />
                <label for="rememberMe"><spring:message code="screen.rememberme.checkbox.title" /></label>
        </section>
-->

            <input type="hidden" name="lt" value="${loginTicket}" />
            <input type="hidden" name="execution" value="${flowExecutionKey}" />
            <input type="hidden" name="_eventId" value="submit" />

        <section class="row btn-row">
            <button class="btn btn-submit" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" tabindex="6" type="submit">Valider</button>
        </section>

						<p>
						<a href="https://declaration.vins-centre-loire.com/mot_de_passe_oublie">Mot de passe oublié ?</a>
						</p>


    </form:form>
</div>
					<div class="form-signup">
						<h3>Première connexion :</h3>

						<p>
							S'il s'agit de votre première connexion, munissez vous de votre identifiant et du code de création à 4 chiffres reçus par courrier :
						</p>

						<a href="https://declaration.vins-centre-loire.com/teledeclarant/code_creation" class="btn">Créer votre compte</a>
					</div>
<jsp:directive.include file="includes/bottom.jsp" />
