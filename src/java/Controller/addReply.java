/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Comments_model;
import Model.Reply_model;
import beans.Comment;
import beans.Reply;
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
@WebServlet(name = "addReply", urlPatterns = {"/addReply"})
public class addReply extends HttpServlet {

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
            out.println("<title>Servlet addReply</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addReply at " + request.getContextPath() + "</h1>");
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
         String reply_text = request.getParameter("reply_Input");
        String replyId = request.getParameter("commentid");
        HttpSession session = request.getSession();
        Object userID = session.getAttribute("ID");
        Model.Reply_model reply_model = new Reply_model();
        if (reply_text != null && replyId != null && userID != null) {
            beans.Reply reply = new Reply();
            reply.setCommentID(replyId);
            reply.setReply(reply_text);
            reply.setReplyerID(userID.toString());
            if (reply_text.length()>0 && reply_model.insertReplay(reply)) {
                String message = "done";
                response.setContentType("text/plain");
                response.getWriter().write(message);
                return;
            } else {
                String message = "field_required";
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
