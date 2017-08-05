/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Users_model;
import beans.user_bean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "UpdateProfile", urlPatterns = {"/UpdateProfile"})
public class UpdateProfile extends HttpServlet {

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
            response.sendRedirect("Home.jsp");
            return;
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

        try {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        String name,email,phone,address,facebook,twitter,about;
        name=request.getParameter("name");
        email=request.getParameter("email").trim();
        phone=request.getParameter("phone");
        facebook=request.getParameter("facebook");
        twitter=request.getParameter("twitter");
        address=request.getParameter("address");
        about=request.getParameter("about");
        if(name==null || email==null || phone==null || facebook==null || twitter==null || address==null||about==null){
            throw new Exception("paramater error");
        }
        user_bean user= new user_bean();
        user.setPassword((String) session.getAttribute("password"));
        user.setEmail(email);
        user.setPhone(phone);
        user.setName(name);
        user.setFacebook(facebook);
        user.setTwitter(twitter);
        user.setAddress(address);user.setAbout(about);
        Model.Users_model users_model=new Users_model();
        if(users_model.update_user(user,session.getAttribute("email").toString())){
            session.setAttribute("email", user.getEmail());
            request.setAttribute("toasterMessage", "updateDone");
            RequestDispatcher dispatcher=request.getRequestDispatcher("Profile.jsp");
                 dispatcher.forward(request, response);
                 
       // response.sendRedirect("Profile.jsp");
        return;
        } 
        } catch (Exception e) {
            response.sendRedirect("profile");
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
