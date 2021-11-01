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
import Model.Schedule;
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
public class TeamScheduleController extends BaseRequiredAuthController {

    @Override
    protected void proccessGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
        TeamDBContext tdb = new TeamDBContext();
        ArrayList<Team> teams = tdb.getTeams();
        request.setAttribute("teams", teams);
        request.getRequestDispatcher("../view/jsp/teamschedule.jsp").forward(request, response);
    }

    @Override
    protected void proccessPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id_host = Integer.parseInt(request.getParameter("team_host"));
        int id_opponent = Integer.parseInt(request.getParameter("team_opponent"));
        
        if(id_host == id_opponent){
            String error = "Team can't be duppilicated for two side";
            request.setAttribute("error", error);
            request.getRequestDispatcher("../view/jsp/teamschedule.jsp").forward(request, response);
        }
        
        Match m = new Match();
        m.setTeam_opponent_id(id_opponent);
        m.setDate(Date.valueOf(request.getParameter("date")));
        m.setTime(Time.valueOf(request.getParameter("time")));
        m.setNumberTicket(Integer.parseInt(request.getParameter("quantity_ticket")));
        Schedule s = new Schedule();
        s.setId(id_host);
        m.setSchedule(s);
        TeamScheduleDBContext tsdb = new TeamScheduleDBContext();
        tsdb.insert(m);
        ArrayList<Match> schedule = tsdb.getSchedule(id_host);
        request.setAttribute("schedule", schedule);
        request.getRequestDispatcher("../view/jsp/teamschedule.jsp").forward(request, response);
    }

    
}
