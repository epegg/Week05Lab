<%-- 
    Document   : shoppingList
    Created on : Oct 4, 2018, 12:13:26 PM
    Author     : 752814
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <h3>Hello ${username}</h3><br/>
        <a href="register?logout">Logout</a>
        <form method="post" action="ShoppingList">
            <h2>List</h2>
            Add Item: <input type="text" name="addNew"/><br/>
            <a href="ShoppingList?action=add">Add</a><br/>
            <c:forTokens items = "${list}" delims = "," var = "name">
                <input type="radio" name="item" value="${name}"><c:out value = "${name}"/><p>
             </c:forTokens>

        </form>
    </body>
</html>
