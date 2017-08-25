/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Contact_Model;
import beans.Contact_Bean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AHMED 50070
 */
public class Contact extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Contact</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contact at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Name = request.getParameter("name");
        String EMAIL = request.getParameter("email");
        String Message = request.getParameter("message");
        String Phone = request.getParameter("phone");
        String Address = request.getParameter("address");

        Contact_Model ContactModel = new Contact_Model();
        Contact_Bean contact = new Contact_Bean();

        System.out.println(Name);
        System.out.println(EMAIL);
        System.out.println(Message);
        System.out.println(Phone);
        System.out.println(Address);

        if (isvalid(Name) && isvalid(EMAIL) && isvalid(Message) && isvalid(Phone) && isvalid(Address)) {

            contact.setName(Name);
            contact.setPhone(Phone);
            contact.setEmail(EMAIL);
            contact.setAdress(Address);
            contact.setMessage(Message);

            if (ContactModel.insertMessge(contact)) {
                response.sendRedirect("contact-us.jsp?state=up");
            } else {
                response.sendRedirect("contact-us.jsp?state=er");
            }

        } else {
            response.sendRedirect("contact-us.jsp?state=un");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public boolean isvalid(String data) {

        return data != null && !data.isEmpty();

    }
}
