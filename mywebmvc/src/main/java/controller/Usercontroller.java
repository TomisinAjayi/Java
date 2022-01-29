/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */
public class Usercontroller {
    Connection conn = null;
    public Connection getConnect() {
        conn = DriverManager.getConnection("jdbc:localhost:3306/user", "root", "");
    }
}
