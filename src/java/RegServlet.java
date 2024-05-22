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
//import static java.lang.System.out;

/**
 *
 * @author FIKKI
 */
@WebServlet("/RegServlet")

public class RegServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String username = request.getParameter("usern");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String cpassword = request.getParameter("cpass");

        if (password.equals("") || cpassword.equals("")) {
            RequestDispatcher dispatch = request.getRequestDispatcher("/Register.jsp");
            dispatch.forward(request, response);

        } else {

            if (password.equals(cpassword)) {
                RegBean r = new RegBean();
                r.setFirstname(firstname);
                r.setLastname(lastname);
                r.setUsername(username);
                r.setEmail(email);
                r.setPassword(password);

                int status = RegDao.save(r);

                if (status > 0) {
                    out.print("<h4 class = 'd-flex justify-content-center text-light p-2'>Record Saved Successfully</h4>");
                    RequestDispatcher dispatch = request.getRequestDispatcher("/welcome.jsp");
                    dispatch.include(request, response);

                } else {
                    out.print("<h4 class = 'd-flex justify-content-center text-light p-2'>Record Error</h4>");
                    RequestDispatcher dispatch = request.getRequestDispatcher("/Register.jsp");
                    dispatch.include(request, response);
                }

            } else {
                out.print("<h4 class = 'd-flex justify-content-center text-light p-2'>Passwords Don't Match</h4>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/Register.jsp");
                dispatch.include(request, response);

            }

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
