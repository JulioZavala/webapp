package app.controler;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EnviarArchivoServlet")
public class EnviarArchivoServlet extends HttpServlet {



    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        response.setHeader("Content-Disposition", "attachment; filename=texto.pdf");
        response.setContentType("application/pdf");
        File dir = new File("c:\\");
        File f = new File(dir, "HTML.pdf");
        byte[] bytearray = new byte[(int) f.length()];
        FileInputStream is = new FileInputStream(f);
        is.read(bytearray);
        OutputStream os = response.getOutputStream();
        os.write(bytearray);
        os.flush();

    }
}
