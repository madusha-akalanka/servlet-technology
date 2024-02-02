<%--
  Created by IntelliJ IDEA.
  User: akalanka
  Date: 2024-02-02
  Time: 08.23
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
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/home.css">
    <title>DashBoard</title>
</head>
<body class="p-3">
<header class="d-flex justify-content-between align-items-center">
    <div id="logo-container">
        <h1>
            <i class="bi bi-basket-fill"></i>
            Dashboard
        </h1>
    </div>

    <div id="mode-container" class="d-flex gap-2">
        <label class="form-check-label" for="flexSwitchCheckChecked">Dark</label>
        <div class="form-check form-switch">
            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
            <label class="form-check-label" for="flexSwitchCheckChecked">Light</label>
        </div>
    </div>
</header>


<main class="p-3 gap-3 d-flex justify-content-center flex-wrap">
    <a href="customers" class="menu-item text-center shadow-sm">
        <i class="bi bi-person-arms-up fs-1"></i>
        <span class="fs-4 fw-medium">List Customers</span>
    </a>
    <a href="items" class="menu-item text-center shadow-sm">
        <i class="bi bi-diagram-3-fill fs-1"></i>
        <span class="fs-4 fw-medium">List Items</span>
    </a>
    <a href="#" class="menu-item text-center shadow-sm">
        <i class="bi bi-person-plus-fill fs-1"></i>
        <span class="fs-4 fw-medium">New Customer</span>
    </a>
    <a href="#" class="menu-item text-center shadow-sm">
        <i class="bi bi-backpack4 fs-1"></i>
        <span class="fs-4 fw-medium">New Item</span>
    </a>
</main>

</body>
</html>
