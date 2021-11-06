/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.Login.BaseRequiredAuthController;
import Dal.TeamDBContext;
import Dal.TeamScheduleDBContext;
import Model.Match;
import Model.Team;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class UpdateController extends BaseRequiredAuthController {

    static int temp = 0;

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id  = Integer.parseInt(request.getParameter("id"));
        temp = id;
        TeamScheduleDBContext tsdb = new TeamScheduleDBContext();
        TeamDBContext tdb = new TeamDBContext();
        ArrayList<Team> teams = tdb.getTeams();
        Match match = tsdb.getMatch(id);
        request.setAttribute("match", match);
        request.setAttribute("teams", teams);
        request.getRequestDispatcher("../view/jsp/updateMatch.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int host_id = Integer.parseInt(request.getParameter("host_id"));
        int opponent_id = Integer.parseInt(request.getParameter("opponent_id"));
        Date date = Date.valueOf(request.getParameter("date"));
        Time time = Time.valueOf(request.getParameter("time"));
        int quantity = Integer.parseInt(request.getParameter("quantityTicket"));
        TeamScheduleDBContext tsdb = new TeamScheduleDBContext();
        tsdb.update(temp, host_id, opponent_id, date, time, quantity);
        response.sendRedirect("list");
    }

}
