/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.User;

import Controller.Login.BaseRequiredAuthController;
import Dal.UserDBContext;
import Model.User;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class UserProfileController extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("User");
        if(user != null){
            request.setAttribute("user", user);
        }
        request.getRequestDispatcher("../view/jsp/userprofile.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("User");
        UserDBContext udb = new UserDBContext();
        int id = user.getId();
        String password = user.getPassword();
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Date dob = Date.valueOf(request.getParameter("dob"));
        boolean gender = request.getParameter("gender").equals("male");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        udb.updateUserInfor(id, username, name, email, dob, gender, address, phone);
        user = udb.getUser(username, password);
        request.getSession().setAttribute("User", user);
        response.sendRedirect("myprofile");
    }

}
