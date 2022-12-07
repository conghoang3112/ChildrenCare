<%-- 
    Document   : insert
    Created on : Apr 12, 2022, 3:21:26 PM
    Author     : Ngo Tung Son
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Department" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <form action="insert" method="POST">
            Name: <input type="text" name="name"/> <br/>
            Dob: <input type="date" name="dob"/> <br/>
            Gender: <input type="radio" name="gender" value="male"/>Male
                    <input type="radio" name="gender" value="female"/>Female
            <br/>
            Department: <select name="did">
                <c:forEach items="${requestScope.depts}" var="d">
                <option value="${d.id}" >${d.name}</option>
                </c:forEach>    
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
