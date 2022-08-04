/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment.src;

/**
 *
 * @author kaniya
 */
public class User extends Person {
    private int userId;
    private String password;

    public User(int userId, String password, int personID, String firstName, String lastName, String email, String mobile) {
        super(personID, firstName, lastName, email, mobile);
        this.userId = userId;
        this.password = password;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   
}
