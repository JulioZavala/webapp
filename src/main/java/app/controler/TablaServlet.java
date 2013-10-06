
package app.controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TablaServlet", urlPatterns = {"/TablaServlet"})
public class TablaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("<table border='1'>");
        out.println("<tr><th>Nombre</th><th>Clave</th>");
        out.println("<tr><td>drodriguez</td><td>tienda </td></tr>");
        out.println("</table>");
        out.close();
    }
}
