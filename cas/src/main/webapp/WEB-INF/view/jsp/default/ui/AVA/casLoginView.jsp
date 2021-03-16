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

<%

File file = new File(request.getRealPath("base_url.conf"));
String host = "";

        InputStreamReader streamReader = new InputStreamReader(new FileInputStream(file));
        BufferedReader br = new BufferedReader(streamReader);

        String line = new String();
        while (br.ready()) {
           line = br.readLine();
            host = line;
        }

%>

<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:directive.include file="includes/top.jsp" />

<!-- #content -->
<section id="content" class="container">

    <div class="row">
        <div class="col-xs-6 first-connection">
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    
                    <h2 class="h3">Première connexion</h2>
                                
                    <p>
                        S'il s'agit de votre première connexion, munissez-vous de votre numéro CVI et du code de création à 4 chiffres que vous avez reçu par courrier.
                    </p>
                    
                    <div class="row">
                        <div class="col-xs-7 col-xs-offset-5">
                            <a href="https://declaration.ava-aoc.fr/compte" class="btn btn-default btn-block btn-lg">Créer votre compte</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 space-member">
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    <h2 class="h3">Espace adhérent</h2>

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
                                    <form:input cssClass="required form-control" cssErrorClass="error" id="username" size="25" tabindex="1" placeholder="Votre N° CVI" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true" />
                                </c:if>
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <label class="col-xs-4 control-label" for="password">Mot de passe :</label>
                            <div class="col-xs-8">
                                <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
                                <form:password cssClass="required form-control" cssErrorClass="error" id="password" size="25" tabindex="2" placeholder="Le même que sur Vinsalsace.pro" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <div class="col-xs-offset-4 col-xs-8">
                                <a href="https://declaration.ava-aoc.fr/mot_de_passe_oublie" class="forgotten-password">Mot de passe oublié</a>
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <div class="col-xs-offset-8 col-xs-4">
                                <input type="hidden" name="lt" value="${flowExecutionKey}" />
                                <input type="hidden" name="_eventId" value="submit" />
                                <button class="btn btn-default btn-block btn-lg" type="submit">Valider</button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>


    <div class="presentation-services">
        <div class="row">
            <div class="col-xs-12 presentation-title">
                <h2>Sur ce site, l'AVA met à la disposition de ses adhérents une multiplicité de services :</h2>
            </div>
        </div>
        
        <div class="row">
            <div class="col-xs-6">
                <div class="module module-declarations">
                    <h3>Un module <br />de saisie des déclarations</h3>
                    
                    <ul>
                        <li>Déclaration <br />de Revendication</li>
                        <li>Déclaration <br />d'Affectation Parcellaire</li>
                        <li>Déclaration de Tirage</li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-6" style="position:relative;">
                <div class="module module-bibliotheque">
                    <h3>Une bibliothèque de documents téléchargables</h3>
                    
                    <ul>
                        <li>Cahiers <br/>des Charges</li>
                        <li>Archives de la revue<br />des Vins d'Alsace</li>
                        <li>Recherche Avancée</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- end #content -->

<jsp:directive.include file="includes/bottom.jsp" />
