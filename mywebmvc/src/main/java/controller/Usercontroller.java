/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author HP
 */
public class Usercontroller {
    Connection conn = null;
    public Connection getConnect() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aptech763", "root", "");
        } catch(SQLException ex) {
            System.out.println("Something is wrong!");
        }
        return conn;
    }
    
    public User getOneUser(int userid) {
        User us = null;
        Connection con = getConnect();
        try {
            PreparedStatement sts = con.prepareStatement("select * from user where id=?");
            sts.setInt(1, userid);
            ResultSet rs1 = sts.executeQuery();
            if(rs1.next()) {
                us = new User(rs1.getInt("id"), rs1.getString("firstname"), rs1.getString("lastname"), rs1.getString("email"), rs1.getString("password"));
                
            }
        } catch(SQLException e) {
        
        }
        return us;
    }
    public ArrayList<User> getAllUsers() {
        ArrayList<User> allUser = new ArrayList<>();
        Connection con = getConnect();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from user");
            
            while(rs.next()) {
                User u = new User(rs.getInt("id"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("password"));
                allUser.add(u);
            }
        } catch (SQLException e) {
        }
        
        return allUser;
    }
    
    public boolean addUser(User u) {
        boolean user_added = false;
        Connection con = getConnect();
        
        try {
            PreparedStatement st = con.prepareStatement("insert into user (firstname, lastname, email, password) values (?,?,?,?)");
            st.setString(1, u.getFirstname());
            st.setString(2, u.getLastname());
            st.setString(3, u.getEmail());
            st.setString(4, u.getPassword());
            user_added = st.execute();
        } catch(SQLException ex) {
            
        }
        
        return user_added;
    }
    public boolean updateUser(User u) {
        
        boolean has_update = false;
        Connection con = getConnect();
        
        try {
            PreparedStatement st = con.prepareStatement("update user set firstname=?, lastname=?, email=?, password=? where id=?");
            st.setString(1, u.getFirstname());
            st.setString(2, u.getLastname());
            st.setString(3, u.getEmail());
            st.setString(4, u.getPassword());
            st.setInt(5, u.getId());
            has_update = st.execute();
        } catch(SQLException ex) {
            
        }
        return has_update;
    }
    public boolean deleteUser(int userid) {
        boolean has_deleted = false;
        Connection con = getConnect();
        try {
            PreparedStatement stsd = con.prepareStatement("delete from user where id=?");
            stsd.setInt(1, userid);
            has_deleted = stsd.execute();
        } catch (SQLException e) {
        }
        
        return has_deleted;
    }
}
