/**
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
 **/
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class ServletDatos extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             out.println("<!DOCTYPE html>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\" />");
            out.println("<link rel=\'icon\' href=\'img/favicon.png\' type=\'image/x-icon\'>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletBienvenida</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Datos Personales desde un formulario HTML</h1>");
            //guardamos los nombres de los parametros
            Enumeration paramNames = request.getParameterNames();
            //vamos mostrando los parámetros en un while

            while (paramNames.hasMoreElements()) {

                String paramName = (String) paramNames.nextElement();
                //Mostramos el nombre del parámetro       
                out.print(paramName + " = ");
                //guardamos los valores del parámetro
                String[] paramValues = request.getParameterValues(paramName);
                //vemos si tiene más de un valor 
                if (paramName == "color") {
                    out.println("");
                } else if (paramValues.length == 1) {

                    String paramValue = paramValues[0];
                    if (paramValue.length() == 0) {
                        out.println("<i>Sin valor</i><br>");
                    } else {
                        out.println(paramValue + "<br>");
                    }
                } else {
                    //Si tiene más de valor mostramos todos
                    for (int i = paramValues.length - 1; i >= 0; i--) {
                        out.println(paramValues[i] + ", ");
                    }
                    out.println("<br>");
                }
            }//end while
            //Escribimos el final de la página HTML.
            out.println("<img src=\"img/banner_hey.png\" class=\"center\">");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String cadena1 = request.getParameter("nombre").toString();
        String cadena2 = request.getParameter("apellido").toString();
        System.out.println("Nombre = " + cadena1 + " Apellido = " + cadena2);

        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
