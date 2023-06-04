<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body class="container">
<h1>Fruit Store</h1>
<table class="table">
    <tr>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <c:forEach var="theFruit" items="${fruitItem}">
        <tr>
            <td>
                <c:choose>
                    <c:when test="${fn:startsWith(theFruit.name, 'G')}">
                        <font color="orange"><c:out value="${theFruit.name}"/></font>
                    </c:when>
                    <c:otherwise>
                        <c:out value="${theFruit.name}"/>
                    </c:otherwise>
                </c:choose>
            </td>
            <td><c:out value="${theFruit.price}"/></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
