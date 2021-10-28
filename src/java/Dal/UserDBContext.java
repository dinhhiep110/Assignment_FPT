/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Model.User;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy Hiep
 */
public class UserDBContext extends DBContext {
    public void updateUserInfor(int id,String username,String name,String email,Date dob,boolean gender,String address,String phone){
        try {
            String sql = "UPDATE [User]\n" +
                    "   SET [username] = ?\n" +
                    "      ,[name] = ?\n" +
                    "      ,[email] = ?\n" +
                    "      ,[dob] = ?\n" +
                    "      ,[gender] = ?\n" +
                    "      ,[phone] = ?\n" +
                    "      ,[address] = ?\n" +
                    " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, name);
            stm.setString(3, email);
            stm.setDate(4, dob);
            stm.setBoolean(5, gender);
            stm.setString(6, phone);
            stm.setString(7, address);
            stm.setInt(8, id);
            stm.executeUpdate(); 
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
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
}
