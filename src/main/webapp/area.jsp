
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! final double pi = 3.14159;%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area</title>
    </head>
    <body>
        Usando PI igual a <%=pi%>, el área del círculo<br>
        con un radio de 3 es  <%=area(3)%>
        <%!
            double area(double r) {
                return r * r * pi;
            }
        %>


    </body>
</html>
