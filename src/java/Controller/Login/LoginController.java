/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Login;

import Dal.LoginDBContext;
import Model.User;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Duy Hiep
 */
public class LoginController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("authentication/jsp/login.jsp").forward(request, response);
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
        LoginDBContext ldb = new LoginDBContext();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        User u = null;
        if(user != null){
            u = ldb.getUser(user, pass);
        }    
        if(user == null || user.length() == 0){ 
            User ur = new User();
            ur.setName(request.getParameter("name"));
            ur.setUsername(request.getParameter("username"));
            ur.setPassword(request.getParameter("password"));
            ur.setGender(request.getParameter("gender").equals("male"));
            ur.setDob(Date.valueOf(request.getParameter("dob"))); //avoid illegal argument exception
            ur.setEmail(request.getParameter("email"));
            ur.setPhone(request.getParameter("phone"));
            ur.setAddress(request.getParameter("address"));
            ur.setIsAdmin(false);
            ldb.insertUser(ur);
            u = ldb.getUser(ur.getUsername(), ur.getPassword());
        }
        request.getSession().setAttribute("User", u);
        if(u != null){
            response.sendRedirect("home");
        }
        else{
            String error = "Username or Password is incorect";
            request.setAttribute("error", error);
            request.getRequestDispatcher("authentication/jsp/login.jsp").forward(request, response);
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