<%
    if ((session.getAttribute("users") == null) || (session.getAttribute("users") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("users")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>