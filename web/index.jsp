<%--
  Created by IntelliJ IDEA.
  User: mdzp
  Date: 23.11.2017
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" import="atj.MyHttpSessionListener" %>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <%
            int sessionCount = MyHttpSessionListener.getActiveSessionsCount();
            HttpSession session = request.getSession(false);
            if (session != null)
            {
                session.invalidate();
            }
        %>
        <h2>Current session count: <%=sessionCount%></h2>
        <form action="loggedin.jsp">
            <input type="submit" value="Login">
        </form>
    </body>
</html>