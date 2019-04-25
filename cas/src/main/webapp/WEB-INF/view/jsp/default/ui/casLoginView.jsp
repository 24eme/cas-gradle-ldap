<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:directive.include file="includes/top.jsp" />


				<p class="intro">
				</p>
			
				<img class="visuel" src="images/vi_authentification.png" alt="Enregistrez vos contrats en ligne. Consultez l'Observatoire Economique." />
			
				<img class="visuel_mobile" src="images/vi_authentification_mobile.png" alt="Enregistrez vos contrats en ligne. Consultez l'Observatoire Economique." />
			
				<div class="authentification">
					<div class="bloc bloc_connexion">
						<h2>Connexion</h2>
			
						<div class="bloc_contenu">
							<p>Entrez votre identifiant et votre mot de passe</p>
							
  <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">

    <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" />
  
  								<div class="form_ligne">
									<label for="username">Identifiant</label>
      <c:choose>
        <c:when test="${not empty sessionScope.openIdLocalId}">
          <strong>${sessionScope.openIdLocalId}</strong>
          <input type="hidden" cssClass="champ" id="username" name="username" value="${sessionScope.openIdLocalId}" />
        </c:when>
        <c:otherwise>
          <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
          <form:input cssClass="required champ" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
        </c:otherwise>
      </c:choose>
								</div>
							
								<div class="form_ligne">
									<label for="password">Mot de passe</label>
								        <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
								        <form:password cssClass="required champ" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
								</div>
							
								<div class="form_ligne txt_droite">
								<a href="https://teledeclaration.vinsvaldeloire.pro/mot_de_passe_oublie" class="mdp_oublie">Mot de passe oubli&eacute; ?</a>
								</div>
							
								<div class="form_ligne txt_centre">
									<button class="btn_majeur btn_vert" accesskey="l" tabindex="4" type="submit" >Valider</button>
								</div>
    
      <input type="hidden" name="lt" value="${flowExecutionKey}" />
      <input type="hidden" name="_eventId" value="submit" />
  </form:form>
</div>
<div class="bloc bloc_inscription">
  <h2>Premi&egrave;re connexion</h2>
  <div class="bloc_contenu">
    <p>S'il s'agit de votre premi&egrave;re connexion, munissez vous de votre identifiant et du code de cr&eacute;ation &agrave; 4 chiffres de cr&eacute;ation fournis par InterLoire.</p>

<div class="form_ligne txt_centre">
<a href="https://teledeclaration.vinsvaldeloire.pro/teledeclarant/code_creation" class="btn_majeur btn_orange">Cr&eacute;er un compte</a>
</div>
</div>
</div>

</div>
<jsp:directive.include file="includes/bottom.jsp" />
