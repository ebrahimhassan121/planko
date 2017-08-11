/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Categories_model;
import Model.Questions_model;
import beans.question_bean;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author EHS
 */
@WebServlet(name = "addDetailedQuestion", urlPatterns = {"/addDetailedQuestion"})
@MultipartConfig(maxFileSize = 20177215)
public class addDetailedQuestion extends HttpServlet {

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
            out.println("<title>Servlet addDetailedQuestion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addDetailedQuestion at " + request.getContextPath() + "</h1>");
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
        try {
            request.setCharacterEncoding("UTF-8");

            Part filePart = request.getPart("image");

            String title = request.getParameter("title");
            String details_text = request.getParameter("details_text");
            String keywords = request.getParameter("keywords");
            String cat = request.getParameter("cat");
            HttpSession session = request.getSession();
            response.setContentType("text/plain");
            if (session.getAttribute("ID") == null) {
                response.getWriter().write("login_required");
                return;
            }
            if (title != null) {
                question_bean question = new question_bean();
                if (ImageIO.read(filePart.getInputStream()) != null) {
                    question.setImage_input(filePart.getInputStream());

                }
                question.setQuestionTitle(title);
                if(details_text!=null){
                question.setQuestion_text(details_text);
                }
                if(keywords!=null){
                    question.setKeywords(keywords);
                
                }
                question.setOwnerID(session.getAttribute("ID").toString());
                java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
                question.setQuestionDate(date);
                if(cat!=null){
                question.setQuestionCategory(new Categories_model().SelectCatByName(cat.trim()));
                }
                Questions_model questions_model = new Questions_model();
                if (questions_model.insertQuestion(question)) {
                    response.getWriter().write("done");
                    return;
                } else {
                    response.getWriter().write("someThingERROR");
                }
            } else {
                response.getWriter().write("NOWAY");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            response.sendRedirect("Home.jsp");
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

    private byte[] getBytesFromInputStream(InputStream is) throws IOException {
        try (ByteArrayOutputStream os = new ByteArrayOutputStream();) {
            byte[] buffer = new byte[0xFFFF];

            for (int len; (len = is.read(buffer)) != -1;) {
                os.write(buffer, 0, len);
            }

            os.flush();

            return os.toByteArray();
        }
    }

}
