

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%
    Collection<String> c = new ArrayList<String>();
    c.add("servlets");
    c.add("jsp");
    c.add("beans");
    c.add("tags");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar collections</title>
    </head>
    <body>
        <h1>LISTADO</h1>
        <ul>
            <%
                for (String x : c) {%>
            <li> <%=x%></li>

            <% }%>    


        </ul>


    </body>
</html>
