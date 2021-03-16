<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<!-- ####### PLEASE KEEP ####### -->
<!--[if lte IE 6 ]><html class="no-js ie6 ielt7 ielt8 ielt9" lang="<?php echo LANG; ?>"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie7 ielt8 ielt9" lang="<?php echo LANG; ?>"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie8 ielt9" lang="<?php echo LANG; ?>"><![endif]-->
<!--[if IE 9 ]><html class="no-js ie9" lang="<?php echo LANG; ?>"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="<?php echo LANG; ?>"><!--<![endif]-->
<!-- ####### PLEASE KEEP ####### -->
<head>
    <title>Portail de l'association des viticulteurs d'Alsace</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="author" content="Actualys" />
    <meta name="description" content="" /> 
    <meta name="robots" content="index,follow" />
    <meta name="content-language" content="fr-FR" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="shortcut icon" type="image/x-icon" href="/cas/AVA/favico.ico" />
        <link rel="icon" type="image/x-icon" href="/cas/AVA/favico.ico" />
        <link rel="icon" type="image/png" href="/cas/AVA/favico.png" />

    <link rel="stylesheet" type="text/css" href="AVA/css/compile.css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,600" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="AVA/js/lib/modernizr-2.8.2.js"></script>
    <script type="text/javascript" src="AVA/js/lib/device.min.js"></script>

    <!--[if lt IE 9]>
      <script type="text/javascript" src="AVA/js/lib/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<body role="document" class="home_auth">
<!-- ####### PLEASE KEEP ####### -->
<!--[if lte IE 7 ]>
<div id="message_ie">
    <div class="gabarit">
        <p><strong>Vous utilisez un navigateur obsolète depuis près de 10 ans !</strong> Il est possible que l'affichage du site soit fortement altéré par l'utilisation de celui-ci.</p>
    </div>
</div>
<![endif]-->
<!-- ####### PLEASE KEEP ####### -->

<!-- #page -->
<div id="page" class="container">

    <div id="bg-page">
        <img src="AVA/images/bg/bg_global.jpg" alt="" />
    </div>

    <!-- #header -->
    <header id="header" class="container" role="banner">

        <h1 class="sr-only">Bienvenue sur le portail de l'association des viticulteurs d'alsace</h1>
            
        <div id="logo">
            <a href="https://declaration.ava-aoc.fr/" title="AVA - Association des Viticulteurs d'Alsace | Retour à la page d'accueil">
                <img src="AVA/images/logo_site.png" alt="AVA - Association des Viticulteurs d'Alsace" />
            </a>
        </div>
                    
        <!--<nav id="navigation" role="navigation">
            <span class="profile-name">Vincent Rodriguez</span>

            <ul>
                <li><a href="#">Mon compte</a></li>
                <li><a href="#">Mes déclarations</a></li>
                <li><a href="#">Administration</a></li>
                <li><a href="#">Déconnexion</a></li>
            </ul>
        </nav>-->
    </header>
    <!-- end #header -->
