/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment.db;

import assignment.src.Util;
import assignment.src.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author kaniya
 */
public class MySQLDBUtil implements Util {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLDBUtil() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/kanishka_db?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=kaniya1234");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    @Override
    public boolean addUser(User user) {
        try {

            this.stmt  = this.con.prepareCall("CALL `add_user`('"+user.getFirstName()+"','"+user.getLastName()+"','"+user.getMobile()+"','"+user.getEmail()+"','"+user.getPassword()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    public boolean authUser(String mobile, String password) {
        try {
                      
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `authent_user`('"+mobile+"','"+password+"');");
        
            return rs.next();
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
}
