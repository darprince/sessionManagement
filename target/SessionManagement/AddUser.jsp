<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility

    String username = request.getParameter("user");
    List<String> users = (List<String>)session.getAttribute("users");
 
    if(null == users) {
        users = new ArrayList<String>();
    }
    users.add(username);
    session.setAttribute("users", users);
    response.sendRedirect("index.jsp");
%>