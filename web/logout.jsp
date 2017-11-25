<%--
  Created by IntelliJ IDEA.
  User: mdzp
  Date: 25.11.2017
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" import="atj.MyHttpSessionListener" %>
<html>
    <head>
        <title>Logged out</title>
    </head>
    <body>
        <%
            HttpSession session = request.getSession(false);

            if (session != null)
            {
                session.invalidate();
        %>
            <p>Successfully logged out</p>
        <%
            }
            else
            {
        %>
            <p>Session timed out</p>
        <%
            }

            int sessionCount = MyHttpSessionListener.getActiveSessionsCount();
        %>

        <h2>Current session count: <%=sessionCount%></h2>
        <form action="index.jsp">
            <input type="submit" value="Go to homepage">
        </form>
    </body>
</html>
