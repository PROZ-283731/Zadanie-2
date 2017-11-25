<%--
  Created by IntelliJ IDEA.
  User: mdzp
  Date: 25.11.2017
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="atj.MyHttpSessionListener" %>
<html>
    <head>
        <title>Logged in</title>
    </head>
    <body>
        <%
            int sessionCount = MyHttpSessionListener.getActiveSessionsCount();
            String sessionId = request.getSession(false).getId();
        %>
        <p>Logged in</p>
        <h2>Current session count: <%=sessionCount%></h2>
        <h2>Your session ID: <%=sessionId%></h2>
        <form action="logout.jsp">
            <input type="submit" value="Log out">
        </form>
    </body>
</html>
