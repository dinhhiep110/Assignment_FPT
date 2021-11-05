/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Dal.TeamDBContext;
import Dal.TeamScheduleDBContext;
import Model.Match;
import Model.Team;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy Hiep
 */
public class UpdateController extends HttpServlet {

    static int temp = 0;

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
        int host_id = Integer.parseInt(request.getParameter("host_id"));
        int opponent_id = Integer.parseInt(request.getParameter("opponent_id"));
        Date date = Date.valueOf(request.getParameter("date"));
        Time time = Time.valueOf(request.getParameter("time"));
        int quantity = Integer.parseInt(request.getParameter("quantityTicket"));
        TeamScheduleDBContext tsdb = new TeamScheduleDBContext();
        tsdb.update(temp, host_id, opponent_id, date, time, quantity);
        response.sendRedirect("list");
                
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
