<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="fr">
	<head>
		<title>Espace interprofessionnel des vins du Centre Loire</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
                <meta name="_csrf" content="${_csrf.token}"/>
                <meta name="_csrf_header" content="${_csrf.headerName}"/>
                <meta name="description" content="Déclaration Vins Centre Loire : l'espace de télé-déclarations des DRM des ressortissants du BIVC"/>


<!--                <spring:theme code="standard.custom.css.file" var="customCssFile" />
                <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
-->
                <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
	</head>
	<body>
  	<div id="parentpage">
		<div id="page">
			<header id="header">
				<h1 class="logo-site">
					<img src="images/logo-site.png" alt="Interprofession des Vins de Bergerac et Duras" />
				</h1>
			</header>
			<div id="content" style="min-height: 850px">
				<div class="form-block">
