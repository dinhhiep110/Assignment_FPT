/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Area;

import Controller.Login.BaseRequiredAuthController;
import Dal.AreaDBContext;
import Model.Area;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class AreaBookingController extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int id_area = Integer.parseInt(request.getParameter("id_area"));
        AreaDBContext adb = new AreaDBContext();
        Area area = adb.getAreaByID(id_area);
        request.setAttribute("area", area);
        request.setAttribute("name", name);
        request.getRequestDispatcher("../area/jsp/area.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    

}
