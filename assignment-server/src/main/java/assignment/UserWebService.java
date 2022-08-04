/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment;

import assignment.bl.BL;
import assignment.db.MySQLDBUtil;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author kaniya
 */
@WebService(serviceName = "UserWebService")
public class UserWebService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addUser")
    public boolean addUser(@WebParam(name = "firstName") String firstName, @WebParam(name = "lastName") String lastName, @WebParam(name = "mobile") String mobile, @WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        BL bl = new BL();
        return bl.addUser(firstName, lastName, mobile, email, password);
    }
    
    @WebMethod(operationName = "authUser")
    public boolean authUser(@WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        BL bl = new BL();
        return bl.authUser(mobile, password);
    }
}
