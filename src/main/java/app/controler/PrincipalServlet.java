package app.controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LAB704-00
 */
@WebServlet(name = "PrincipalServlet", urlPatterns = {"/PrincipalServlet"})
public class PrincipalServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h3>Pagina principal</h3>");
        RequestDispatcher rd = request.getRequestDispatcher("/TablaServlet");
        rd.include(request, response);
        out.println("</body></html>");
        out.close();
    }

}
