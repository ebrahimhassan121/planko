/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Setting_Model;
import beans.Setting;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author khaled
 */
@WebServlet(name = "UpdateSetting", urlPatterns = {"/UpdateSetting"})
public class UpdateSetting extends HttpServlet {

    public boolean isvalid(String data) {

        return data != null && !data.isEmpty();
    }

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
            response.sendRedirect("");

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

        InputStream input = null;
        try {

            Part filePart = request.getPart("logo");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String face = request.getParameter("facebook");
            String twitt = request.getParameter("twitter");
            String google = request.getParameter("google");
            String email = request.getParameter("email");

            input = filePart.getInputStream();
            Setting_Model settingModel = new Setting_Model();
            Setting setting = new Setting();

            System.out.println(filePart.getName());
            System.out.println("name: "+name);
            System.out.println("address: "+address);
            System.out.println("Phone: "+ phone);
            System.out.println("Face Book: "+face);
            System.out.println("Twitter: "+twitt);
            System.out.println("Google: "+google);
            System.out.println("Email: "+email);
            
            if (filePart != null && isvalid(name) && isvalid(address) && isvalid(phone)
                    && isvalid(face) && isvalid(twitt) && isvalid(google) && isvalid(email)) {

                setting.setSiteName(name);
                setting.setPhone(phone);
                setting.setAddress(address);
                setting.setFaceBook(face);
                setting.setTwitter(twitt);
                setting.setGoogle(google);
                setting.setEmail(email);

                if (settingModel.updateSiteInfo(setting, input)) {
                    System.out.println("1");
                    response.sendRedirect("admin/Setting.jsp?state=updated");
                } else {
                    System.out.println("2");
                    response.sendRedirect("admin/Setting.jsp");
                }
            } else {
                System.out.println("3");
                response.sendRedirect("admin/Setting.jsp?state=un");
            }
        } catch (Exception e) {
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
