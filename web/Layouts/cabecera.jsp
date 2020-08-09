<%-- 
    Document   : cabecera
    Created on : 24/03/2020, 06:06:40 PM
    Author     : Isma
--%>
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CRUD con MVC</title>
        <!-- MDB icon -->
        <link rel="icon" href="mdb/img/mdb-favicon.ico" type="image/x-icon">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Google Fonts Roboto -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="mdb/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="mdb/css/mdb.min.css">
        <!-- Your custom styles (optional) -->
        <link rel="stylesheet" href="mdb/css/style.css">
        <!-- Plugin file -->
        <link rel="stylesheet" href="./mdb/css/addons/datatables.min.css">
        
        <!-- My Styles -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!-- jQuery -->
        <script type="text/javascript" src="mdb/js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="mdb/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="mdb/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="mdb/js/mdb.min.js"></script>
        <!-- Your custom scripts (optional) -->
        <script type="text/javascript"></script>
        <!-- Plugin file -->
        <script src="mdb/js/addons/datatables.min.js"></script>