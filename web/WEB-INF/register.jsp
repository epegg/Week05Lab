<%-- 
    Document   : register
    Created on : Oct 4, 2018, 12:13:55 PM
    Author     : 752814
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form method="post" action="ShoppingList?action=register">
            Username: <input type="text" name="username"/><br/>
            <input type="submit" value="Register Name"/><br/>
            <div style="color:red;">${message}</div>
        </form>
    </body>
</html>
