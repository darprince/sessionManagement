<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
    <title>Servlet Session Listener example</title>
</head>
<body>
    <h2>Add User Screen</h2>
<span style="float: right">
<a href="DestroySession.jsp">Destroy this session</a>
</span>
    <form method="post" action="AddUser.jsp">
        <h3>Enter Username to Add in List</h3>
        <input type="text" name="user"/>
        <input type="submit" value="Add User"/>
    </form>
 <a href="page.jsp">Test</a>
    <%
        List<String> users = (List<String>)session.getAttribute("users");
        for(int i=0; null!=users && i < users.size(); i++) {
            out.println("<br/>" + users.get(i));
        }
    %>
</body>
</html>