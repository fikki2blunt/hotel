/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FIKKI
 */

@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("user");
        
        HttpSession session = request.getSession();
        session.setAttribute("usern", username);
        
        request.setAttribute("usern", username);
        out.println("<h2>WELCOME " +username +"</h2>");
        
        out.println ( " <a href='DummyServlet'>Visit<a/> ");
        
        
//           RequestDispatcher dispatch = request.getRequestDispatcher("/DummyServlet");
//           dispatch.forward(request, response);
        
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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        
        // gain access to data
        LoginDao ln = new LoginDao();
        
        HttpSession session = request.getSession();
        
     
            if(ln.validator(username,password)==2){
                session.setAttribute("auth", username);
                
                //username.equals("fikayo") && password.equals("fikky123")){
                // out.print("<h2>WELCOME " +username +"</h2>");
                out.print("<p class='bg-info text-light p-2 sticky top'>welcome "+ username+"</p>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/index.jsp");
                
                dispatch.include(request, response);
//             response.sendRedirect(username);

            }else if (ln.validator(username,password)==1){
                out.print("<h4 class = 'd-flex justify-content-center text-danger p-2'>welcom " + username +"</h4>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/Admin.jsp");
                dispatch.include(request, response);
            
            } else if(username.equals(  "")||password.equals("")){
                out.print("<h4 class = 'd-flex justify-content-center text-light p-2'>Please provide valid credentials</h4>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/login.jsp");
                dispatch.include(request, response);
                
            }else {
                out.print("<h4 class = 'd-flex justify-content-center text-danger p-2'>Invalid credentials</h4>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/Admin.jsp");
                dispatch.include(request, response);

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
