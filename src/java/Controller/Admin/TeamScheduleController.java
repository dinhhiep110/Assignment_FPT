/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.Login.BaseRequiredAuthController;
import Dal.TeamDBContext;
import Model.Team;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class TeamScheduleController extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeamDBContext tdb = new TeamDBContext();
        ArrayList<Team> teams = tdb.getTeams();
        request.setAttribute("teams", teams);
        request.getRequestDispatcher("../view/jsp/teamschedule.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    
}
