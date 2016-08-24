<%@ page pageEncoding="UTF-8" %>
<jsp:directive.include file="includes/top.jsp" />

				<div id="login" class="col-sm-6">
					<h2>Connexion</h2>
					<p>Entrez votre identifiant et votre mot de passe :</p>

    <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">

        <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" />

	<div class="form-group">
            <c:choose>
                <c:when test="${not empty sessionScope.openIdLocalId}">
                    <strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
                    <input type="hidden" id="username" name="username" value="<c:out value="${sessionScope.openIdLocalId}" />" placeholder="Votre identifiant" required />
                </c:when>
                <c:otherwise>
                    <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                    <form:input cssClass="required form-control" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" placeholder="Votre identifiant" required="required" />
                </c:otherwise>
            </c:choose>
        </div>

        <div class="form-group">
            <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
            <form:password cssClass="required form-control" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" placeholder="Votre mot de passe" required="required" />
            <span id="capslock-on" style="display:none;"><p><img src="images/warning.png" valign="top"> <spring:message code="screen.capslock.on" /></p></span>
        </div>

            <input type="hidden" name="execution" value="${flowExecutionKey}" />
            <input type="hidden" name="_eventId" value="submit" />

   	    <a href="https://declaration.vinsalsace.pro/mot_de_passe_oublie" class="forgot-pwd">Mot de passe oublié</a>

	<div class="form-btn">
		<button type="submit" class="btn">Valider</button>
	</div>
    </form:form>
</div>

<div id="subscribe" class="col-sm-6">
	<h2>Première connexion ?</h2>
	<p>S’il s’agit de votre première connexion, munissez vous de votre numéro CVI et du code à 4 chiffres reçu par courrier</p>
	<a href="https://declaration.vinsalsace.pro/compte" class="btn">Créer votre compte</a>
</div>

<jsp:directive.include file="includes/bottom.jsp" />
