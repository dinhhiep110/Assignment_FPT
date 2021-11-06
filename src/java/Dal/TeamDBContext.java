/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Model.Team;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy Hiep
 */
public class TeamDBContext extends DBContext {
    public ArrayList<Team> getTeams(){
        ArrayList<Team> teams = new ArrayList<>();
        try {
            String sql = "Select * from Team";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Team t = new Team();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                t.setLocation(rs.getString("location"));
                t.setPublish_year(rs.getString("publish_year"));
                teams.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return teams;
    }

    public Team getTeamByID(int id) {
        try {
            String sql = "SELECT [id]\n" +
                    "      ,[name]\n" +
                    "      ,[location]\n" +
                    "      ,[publish_year]\n" +
                    "  FROM [Team] where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
               Team t = new Team();
               t.setId(rs.getInt("id"));
               t.setName(rs.getString("name"));
               t.setLocation(rs.getString("location"));
               t.setPublish_year(rs.getString("publish_year"));
               return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
