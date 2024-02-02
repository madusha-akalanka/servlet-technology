<%@ page import="lk.ijse.dep11.webssr.to.ItemTo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: akalanka
  Date: 2024-02-01
  Time: 18.28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&family=Rubik+Glitch+Pop&display=swap"
          rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="stylesheet" href="style.css">

    <title>Item</title>
</head>
<body class="p-3">

<%@ include file="header.jsp"%>

<h1 class="text-center mb-2">
    <i class="bi bi-calendar-event-fill"></i>
    Items
</h1>

<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th>Qty</th>
        <th>Unit_Price</th>
    </tr>
    </thead>

    <tbody>

    <c:forEach var="itemList" items="${itemList}">
        <tr>
            <td>${itemList.code}</td>
            <td>${itemList.description}</td>
            <td>${itemList.qty}</td>
            <td>${itemList.unitPrice}</td>
        </tr>

    </c:forEach>
    </tbody>
</table>

</body>
</html>
