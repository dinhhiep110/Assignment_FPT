/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Model.Match;
import Model.Schedule;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy Hiep
 */
public class TeamScheduleDBContext extends DBContext {
    public void insert (Match m){
        try {
            String sql = "INSERT INTO [Match]\n" +
                    "           ([team_opponent_id]\n" +
                    "           ,[date]\n" +
                    "           ,[time]\n" +
                    "           ,[number_of_ticket]\n" +
                    "           ,[schedule_id])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, m.getTeam_opponent_id());
            stm.setDate(2, m.getDate());
            stm.setTime(3, m.getTime());
            stm.setInt(4, m.getNumberTicket());
            stm.setInt(5, m.getSchedule().getId());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TeamScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Match> getSchedule(int schedule_id){
        ArrayList<Match> schedule = new ArrayList<>();
        try {
            String sql = "Select * from Match where schedule_id = ? and date >= GETDATE() order by Match.date desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, schedule_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Match m = new Match();
                m.setId(rs.getInt("id"));
                m.setTeam_opponent_id(rs.getInt("team_opponent_id"));
                m.setDate(rs.getDate("date"));
                m.setTime(rs.getTime("time"));
                m.setNumberTicket(rs.getInt("number_of_ticket"));
                Schedule s = new Schedule();
                s.setId(schedule_id);
                m.setSchedule(s);
                schedule.add(m);         
            }
        } 
        catch (SQLException ex) {
            Logger.getLogger(TeamScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return schedule;
    }
    
    public void delete(int id){
        try {
            String sql = "DELETE FROM [Match]\n" +
                    " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TeamScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Match getMatch(int id){
        try {
            String sql = "SELECT [id]\n" +
                    "      ,[team_opponent_id]\n" +
                    "      ,[date]\n" +
                    "      ,[time]\n" +
                    "      ,[number_of_ticket]\n" +
                    "      ,[schedule_id]\n" +
                    "  FROM [Match] where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {                
                Match m = new Match();
                m.setId(rs.getInt("id"));
                m.setTeam_opponent_id(rs.getInt("team_opponent_id"));
                m.setDate(rs.getDate("date"));
                m.setTime(rs.getTime("time"));
                m.setNumberTicket(rs.getInt("number_of_ticket"));
                Schedule s = new Schedule();
                s.setId(rs.getInt("schedule_id"));
                m.setSchedule(s);
                return m;
            }    
        } 
        catch (SQLException ex) {
            Logger.getLogger(TeamScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void update(int id,int host,int opponent,Date date,Time time,int quantity){
        try {
            String sql = "UPDATE [Match]\n" +
                    "   SET [team_opponent_id] = ?\n" +
                    "      ,[date] = ?\n" +
                    "      ,[time] = ?\n" +
                    "      ,[number_of_ticket] = ?\n" +
                    "      ,[schedule_id] = ?\n" +
                    " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, opponent);
            stm.setDate(2, date);
            stm.setTime(3, time);
            stm.setInt(4, quantity);
            stm.setInt(5, host);
            stm.setInt(6, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TeamScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
