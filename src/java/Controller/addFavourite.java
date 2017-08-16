/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Favourite_model;
import Model.Reply_model;
import beans.Reply;
import beans.favourite;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EHS
 */
@WebServlet(name = "addFavourite", urlPatterns = {"/addFavourite"})
public class addFavourite extends HttpServlet {

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
            out.println("<title>Servlet addFavourite</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addFavourite at " + request.getContextPath() + "</h1>");
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
        response.sendRedirect("Home.jsp");
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
        String favouriteQuestionID = request.getParameter("questionid");
        HttpSession session = request.getSession();
        Object userID = session.getAttribute("ID");
        Model.Favourite_model favourite_model = new Favourite_model();
        if (favouriteQuestionID!=null&& userID != null) {
            beans.favourite fav=new favourite();
           fav.setFavouriteQuestionID(favouriteQuestionID);
           fav.setFavouriteUserID(userID.toString());
            if (favourite_model.insert_Favourite(fav)) {
                String message = "fav-unfav";
                response.setContentType("text/plain");
                response.getWriter().write(message);
                return;
            } else {
                String message = "error";
                response.setContentType("text/plain");
                response.getWriter().write(message);
                return;
//                String message = "error";
//                response.setContentType("text/plain");
//                response.getWriter().write(message);
            }
        } else {
            String message = "login_required";
            response.setContentType("text/plain");
            response.getWriter().write(message);
            return;
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

}
