/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Model.Area;
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
public class AreaDBContext extends DBContext{
    public ArrayList<Area> getArea(){
        ArrayList<Area> areas = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n" +
                    "      ,[name]\n" +
                    "      ,[row]\n" +
                    "      ,[column]\n" +
                    "      ,[priceTicket]\n" +
                    "  FROM [Area]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Area a = new Area();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setRow(rs.getInt("row"));
                a.setColumn(rs.getInt("column"));
                a.setPriceTicket(rs.getInt("priceTicket"));
                areas.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AreaDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return areas;
    }    

    public void update(int id, int priceTicket) {
        try {
            String sql = "UPDATE [Area]\n" +
                    "   SET [priceTicket] = ?\n" +
                    " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, priceTicket);
            stm.setInt(2, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AreaDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Area getAreaByID(int id){
        try {
            String sql = "SELECT [id]\n" +
                    "      ,[name]\n" +
                    "      ,[row]\n" +
                    "      ,[column]\n" +
                    "      ,[priceTicket]\n" +
                    "  FROM [Area] where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Area a = new Area();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setRow(rs.getInt("row"));
                a.setColumn(rs.getInt("column"));
                a.setPriceTicket(rs.getInt("priceTicket"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AreaDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
