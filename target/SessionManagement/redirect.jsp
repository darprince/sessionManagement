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
	        response.sendRedirect("http://www.google.com");
	%>
		You are not logged in<br/>
	<%} else {
	    String redirect = request.getParameter("redirect");
		response.sendRedirect(redirect);
	%>
		You are logged in<br/>
		
	<%
	    }
	%>
</body>
</html>