<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="fr">
	<head>
		<title>Espace des professionnels des vins et spiritueux du Sud-ouest</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
                <meta name="_csrf" content="${_csrf.token}"/>
                <meta name="_csrf_header" content="${_csrf.headerName}"/>

<!--                <spring:theme code="standard.custom.css.file" var="customCssFile" />
                <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
-->
                <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
	</head>
	<body style="background-color: #9aa49f;">
		<div id="page">
			<header id="header">
				<div class="header-top">
					<div class="container">
						<h1 class="logo-site">
							<img src="images/logo-site.png" alt="France sud ouest. Les vins à découvrir." />
							Espace des professionnels des vins et spiritueux du Sud-ouest
						</h1>

						<div class="logos">
							<img src="images/logo-armagnac.png" alt="Armagnac" />
							<img src="images/logo-floc.png" alt="Floc de Gascogne" />
							<img src="images/logo-cahors.png" alt="Cahors A.O.C" />
						</div>
					</div>
				</div>
			</header>
			<div id="content" style="min-height: 500px">
				<div class="form-block">
