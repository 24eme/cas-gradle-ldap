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


<form:form method="post" id="fm1" cssClass="fm-v clearfix" commandName="${commandName}" htmlEscape="true">

    <h2 class="titre_principal">Accueil</h2>
        
            <div class="box fl-panel" id="application_dr">
              <div id="intro_accueil_civa">
                <!-- <h2>Bienvenue sur le site du CIVA</h2> -->
                
                <!--<div id="carrousel_cont" class="contenu_section">
                    <div id="carrousel">
                        <ul>
                            <li>
                                <img src="images/carrousel/carrousel_vi_1.jpg" alt="" />
                                <strong>Déclarez en ligne</strong>
                            </li>
                            <li>
                                <img src="images/carrousel/carrousel_vi_2.jpg" alt="" />
                                <strong>Testez la solution Alsace GAMM@</strong>
                            </li>
                            <li>
                                <img src="images/carrousel/carrousel_vi_3.jpg" alt="" />
                                <strong>Accédez à votre espace personnel</strong>
                            </li>
                        </ul>
                    </div>
                </div>-->
                
                
                <div id="carrousel_presentation">
                    <div id="carrousel_presentation_cont">
                        <ul>
                            <li>
                                <img src="images/carrousel/carrousel_vi_1.jpg" alt="" />
                                <div class="desc">
                                    <h2>Déclarez en ligne</h2>
                                    <!--<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum massa nibh.</a></p>-->
                                </div>
                            </li>
                            <li>
                                <img src="images/carrousel/carrousel_vi_2.jpg" alt="" />
                                <div class="desc">
                                    <h2>Testez la solution Alsace GAMM@</h2>
                                    <!--<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum massa nibh.</a></p>-->
                                </div>
                            </li>
                            <li>
                                <img src="images/carrousel/carrousel_vi_3.jpg" alt="" />
                                <div class="desc">
                                    <h2>Accédez à votre espace personnel</h2>
                                    <!--<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum massa nibh.</a></p>-->
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                
                
                <script type="text/javascript">
                    $(document).ready(function()
                    {   
                        $("#carrousel_presentation_cont").sudoSlider(
                        { 
                            numeric: true,
                            prevNext: false,
                            controlsAttr: 'class="carrousel_btn"',
                            continuous: true
                        });

                                                var formSubmitted;
                                                formSubmitted = false;
                                                $('#fm1').submit(

                                                     function () {
                                                            if (!formSubmitted) {
                                                              $('.btn').attr('disabled', 'disabled');
                                                              formSubmitted = true;
                                                          }
                                                          return true;
                                                     }
                                                );
                    });
                </script>
                
                
              </div>
              <div id="boxes">
              
                <!--[if lte IE 6 ]>
                <h2 class="titre_section">Avertissement</h2>
                <div id="avertissement_ie6">
                    <div class="contenu_section">
                        <p class="intro">La version de votre navigateur n'est plus à jour. Afin de pouvoir correctement utiliser le site et bénéficier de toutes ses fonctionnalités, nous vous conseillons de télécharger l'un des navigateurs que nous vous proposons ci-dessous.</p>
                        <div class="navigateurs">
                            <a href='http://fr.www.mozilla.com/fr/' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-firefox.jpg' alt='Obtenir Firefox 3.5'/></a>
                            <a href='http://www.microsoft.com/downloads/details.aspx?FamilyID=341c2ad5-8c3d-4347-8c03-08cdecd8852b&DisplayLang=fr' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-ie8.jpg' alt='Obtenir Internet Explorer 8'/></a>
                            <a href='http://www.apple.com/fr/safari/download/' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-safari.jpg' alt='Obtenir Safari 4'/></a>
                            <a href='http://www.google.com/chrome?hl=fr' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-chrome.jpg' alt='Obtenir Google Chrome'/></a>
                        </div>
                    </div>
                </div>
                <![endif]--> 
              
                <!--[if (gt IE 6)|!(IE)]><!-->
                <h2 class="titre_section">Premiere connexion</h2>
                <div id="nouvelle_declaration">
                    <div class="contenu_section">
                        <p class="intro">S'il s'agit de votre premiere connexion, munissez vous de votre numéro CVI et du code à 4 chiffres de création reçus par courrier.</p>
                        <p id="creer_compte" ><a href="<% out.println(host); %>compte"><img src="images/btn_creer_compte.png" alt="Créer votre compte" /></a></p>
                    </div>
                </div>
                <br />
                <h2 class="titre_section">Connexion</h2>
                <div id="nouvelle_declaration">
                    <div class="contenu_section">
                        <p class="intro">Entrez votre identifiant et votre mot de passe :</p>

                        <form:errors path="*" cssClass="errors" id="status" element="div" />

                        <div class="ligne_form row fl-controls-left">
                            <label for="username" class="fl-label">Identifiant : </label>
                            <c:if test="${not empty sessionScope.openIdLocalId}">
                            <strong>${sessionScope.openIdLocalId}</strong>
                            <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
                            </c:if>

                            <c:if test="${empty sessionScope.openIdLocalId}">
                            <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                            <form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true" />
                            </c:if>
                        </div>


                        <div class="ligne_form row fl-controls-left">
                            <label for="password" class="fl-label">Mot de passe :</label>
                            <%--
                            NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
                            "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
                            information, see the following web page:
                            http://www.geocities.com/technofundo/tech/web/ie_autocomplete.html
                            --%>
                            <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
                            <form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
                        </div>

                        <div class="ligne_form link">
                            <a href="<% out.println(host); %>mot_de_passe_oublie">Mot de passe oublié</a>
                        </div>

                        <div class="ligne_form row btn-row ligne_btn">
                            <input type="hidden" name="lt" value="${flowExecutionKey}" />
                            <input type="hidden" name="_eventId" value="submit" />
                            <input class="btn" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" src="images/btn_valider.png" tabindex="4" type="image" />
                       </div>
                    </div>
                </div>
                <!--<![endif]-->
              
              
              </div>
              
              
                <div id="bandeau_civa">
                    <img src="images/bandeau_civa.png" alt="Site officiel des Vins d'Alsace" />
                </div>
              
            </div>

    </form:form>
<jsp:directive.include file="includes/bottom.jsp" />
