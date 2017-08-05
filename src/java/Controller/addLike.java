/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Favourite_model;
import Model.Like_model;
import beans.Likes;
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
@WebServlet(name = "addLike", urlPatterns = {"/addLike"})
public class addLike extends HttpServlet {

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
            out.println("<title>Servlet addLike</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addLike at " + request.getContextPath() + "</h1>");
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
       String LikeQuestionID = request.getParameter("questionid");
        HttpSession session = request.getSession();
        Object userID = session.getAttribute("ID");
        Model.Like_model like_model = new Like_model();
        if (LikeQuestionID!=null&& userID != null) {
            beans.Likes like=new Likes();
           like.setQuestionID(LikeQuestionID);
           like.setLikerID(userID.toString());
            if (like_model.insert_Like(like)) {
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
