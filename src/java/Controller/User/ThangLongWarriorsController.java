/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.User;

import Controller.Login.BaseRequiredAuthController;
import Dal.AreaDBContext;
import Dal.TeamScheduleDBContext;
import Model.Area;
import Model.Match;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class ThangLongWarriorsController extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeamScheduleDBContext tdb = new TeamScheduleDBContext();
        AreaDBContext adb = new AreaDBContext();
        ArrayList<Area> area = adb.getArea();
        ArrayList<Match> schedule = tdb.getSchedule(2);
        request.setAttribute("area", area);
        request.setAttribute("schedule", schedule);
        request.getRequestDispatcher("../vba/jsp/tlw.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    

}
