<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: JHTA
  Date: 2024-08-13
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/commons/header.jsp" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Table</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Year</th>
            <th>Company Name</th>
            <th>Car Name</th>
            <th>Option Count</th>
        </tr>
        </thead>
        <tbody id="carTableBody">
            <%
               for (Object object : result) {
               HashMap record = (HashMap) object;
             %>
        <tr>
            <td>
                <%= record.get("DATE_YEAR") %>
            </td>
            <td>
                <%= record.get("CP_NAME") %>
            </td>
            <td>
                <%= record.get("CAR_NAME") %>
            </td>
            <td>
                <%= record.get("count") %>
            </td>
        </tr>
            <% } %>
        </tbody>
    </table>
</div>
<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
