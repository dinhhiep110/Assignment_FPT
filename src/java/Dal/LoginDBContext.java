/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy Hiep
 */
public class LoginDBContext extends DBContext{
    public User getUser(String user, String pass){
        try {
            String sql = "SELECT [id],[username],[password],[name] ,[email] \n" +
                    ",[dob],[gender],[phone],[address],[isAdmin]\n" +
                    "FROM [User] where username = ? and password = ?";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setName( rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setDob(rs.getDate("dob"));
                u.setGender(rs.getBoolean("gender"));
                u.setPhone(rs.getString("phone"));
                u.setAddress(rs.getString("address"));
                u.setIsAdmin(rs.getBoolean("isAdmin"));
                return u;
            }       
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void insertUser(User u){
        try {
            String sql = "INSERT INTO [User]\n" +
                    "([username],[password],[name],[email],[dob],[gender],[phone],[address],[isAdmin])\n" +
                    "     VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, u.getUsername());
            stm.setString(2, u.getPassword());
            stm.setString(3, u.getName());
            stm.setString(4, u.getEmail());
            stm.setDate(5, u.getDob());
            stm.setBoolean(6, u.isGender());
            stm.setString(7, u.getPhone());
            stm.setString(8, u.getAddress());
            stm.setBoolean(9, u.getIsAdmin());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
