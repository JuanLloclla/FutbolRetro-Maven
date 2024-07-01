package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.InformeDAO;
import Modelo.Informe;

@WebServlet(name = "srvInforme", urlPatterns = {"/srvInforme"})
public class srvInforme extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");
        InformeDAO informeDAO = new InformeDAO();

        if (accion != null) {
            switch (accion) {
                case "agregar":
                    String descripcion = request.getParameter("descripcion");
                    Informe informe = new Informe();
                    informe.setDescripcion(descripcion);
                    informeDAO.agregarInforme(informe);
                    response.sendRedirect("quejasAyuda.jsp");
                    break;

                default:
                    response.sendRedirect("quejasAyuda.jsp");
                    break;
            }
        } else {
            response.sendRedirect("quejasAyuda.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
