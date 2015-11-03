<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="com.me.test.UserToAdd"%>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>

<html>
<head>
    <title>Servlet Session Listener example</title>
</head>
<body>
    <h2>Add User Screen</h2>
    <%

    if ((session.getAttribute("users") == null) || (session.getAttribute("users") == "")) {
	%>
	You are not logged in<br/>
	<a href="index.jsp">Please Login</a>
	<%} else {
	%>
	You are logged in as <%=session.getAttribute("users")%>
	<a href='DestroySession.jsp'>Log out</a>
	<%
	    }
	%>
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
    
        System.out.println("Salt: "+UserToAdd.generateSalt());
        System.out.println("Password-Hashed: "+UserToAdd.generateHash("thisismypassword"));
        
    %>
</body>
</html>