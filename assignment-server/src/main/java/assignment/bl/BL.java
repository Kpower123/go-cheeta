/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment.bl;

import assignment.db.MySQLDBUtil;
import assignment.src.User;
import assignment.src.Util;

/**
 *
 * @author kaniya
 */
public class BL {
    private Util util = new MySQLDBUtil();
    
    public boolean addUser(String firstName, String lastName, String mobile, String email, String password){
        User user = new User(0, password, 0, firstName, lastName, email, mobile);
        return util.addUser(user);
    }
    
    public boolean authUser(String mobile, String password) {
        return util.authUser(mobile, password);
    }
}
