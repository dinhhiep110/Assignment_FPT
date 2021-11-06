/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Booking;

import Controller.Login.BaseRequiredAuthController;
import Dal.TeamDBContext;
import Dal.TeamScheduleDBContext;
import Model.Match;
import Model.Team;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class SGHBooking extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int team_id = Integer.parseInt(request.getParameter("team_id"));
        int match_id = Integer.parseInt(request.getParameter("match_id"));
        TeamScheduleDBContext tsdb = new TeamScheduleDBContext();
        TeamDBContext tdb = new TeamDBContext();
        Match match = tsdb.getMatch(match_id);
        Team t = tdb.getTeamByID(team_id);
        request.setAttribute("match", match);
        request.setAttribute("team", t);
        request.getRequestDispatcher("../booking/jsp/sghbooking.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    

}
