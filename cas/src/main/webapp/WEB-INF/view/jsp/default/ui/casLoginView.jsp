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
            <form id="credential" class="form-horizontal" action="/cas/login?service=https://declaration.syndicat-cotesdeprovence.com/" method="post">
                <div class="form-group">
                    <label class="col-xs-4 control-label" for="username">Identifiant :</label>
                    <div class="col-xs-8">
                            <input id="username" name="username" class="required form-control" tabindex="1" placeholder="Votre n&deg; d&#39;adh&eacute;rent" accesskey="i" type="text" value="" size="25" autocomplete="false"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-4 control-label" for="password">Mot de passe :</label>
                    <div class="col-xs-8">
                        <input id="password" name="password" class="required form-control" tabindex="2" placeholder="Mot de passe d&eacute;fini &agrave; la cr&eacute;ation" accesskey="m" type="password" value="" size="25" autocomplete="off"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-4 col-xs-8">
                        <a href="https://declaration.syndicat-cotesdeprovence.com/mot_de_passe_oublie" class="forgotten-password">Mot de passe oublié</a>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-8 col-md-4">
                      <input type="hidden" name="lt" value="" />
                      <input type="hidden" name="execution" value="" />
                      <input type="hidden" name="_eventId" value="submit" />
                        <button class="btn btn-default btn-block btn-lg" type="submit">Valider</button>
                    </div>
                </div>
            </form>
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
