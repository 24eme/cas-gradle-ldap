<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:directive.include file="includes/top.jsp" />
<div class="col-md-12">
    <div class="row">
        <div class="col-xs-12">
            <h3 class="h3">Espace personnel</h3>
            <div class="col-xs-10 col-xs-offset-1">
            <p>Entrez votre identifiant et votre mot de passe :</p>
            <form:form method="post" cssClass="form-horizontal" commandName="${commandName}" htmlEscape="true">

                <form:errors path="*" cssClass="alert alert-danger" id="status" element="div" />

                <div class="form-group">
                    <label class="col-xs-4 control-label" for="username">Identifiant :</label>
                    <div class="col-xs-8">
                        <c:if test="${not empty sessionScope.openIdLocalId}">
                            <strong>${sessionScope.openIdLocalId}</strong>
                            <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
                        </c:if>
                        <c:if test="${empty sessionScope.openIdLocalId}">
                            <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                            <form:input cssClass="required form-control" cssErrorClass="error" id="username" size="25" tabindex="1" placeholder="Votre n° d'adhérent" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true" />
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-4 control-label" for="password">Mot de passe :</label>
                    <div class="col-xs-8">
                        <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
                        <form:password cssClass="required form-control" cssErrorClass="error" id="password" size="25" tabindex="2" placeholder="Mot de passe défini à la création" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-offset-4 col-xs-8">
                        <a href="https://declaration.syndicat-cotesdurhone.com/mot_de_passe_oublie" class="forgotten-password">Mot de passe oublié</a>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-8 col-md-4">
                      <input type="hidden" name="lt" value="${loginTicket}" />
                      <input type="hidden" name="execution" value="${flowExecutionKey}" />
                      <input type="hidden" name="_eventId" value="submit" />
                        <button class="btn btn-default btn-block btn-lg" type="submit">Valider</button>
                    </div>
                </div>
            </form:form>
          </div>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="row">
        <div class="col-xs-12">
            <h3 class="h3">Première connexion</h3>
            <div class="col-xs-10 col-xs-offset-1">
            <p>S'il s'agit de votre première connexion, munissez vous de votre identifiant et du code de création à 4 chiffres qui vous a été fournis.</p>
            <a href="https://declaration.syndicat-cotesdeprovence.com/teledeclarant/code_creation" class="btn btn-default btn-block btn-lg">Créer votre compte</a>
            <p>&nbsp;</p>
            </div>
        </div>
    </div>
</div>
</div>
<div class="presentation-services">
<div class="row">
    <div class="col-xs-12 presentation-title">
        <h2>Saisissez en ligne vos déclarations liées au cahier des charges Côtes de Provence.</h2>
    </div>
</div>
<jsp:directive.include file="includes/bottom.jsp" />
