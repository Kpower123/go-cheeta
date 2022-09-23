/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.DriverBL;
import assignment.src.Booking;
import assignment.src.Driver;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "DriverWebService")
public class DriverWebService {
    private final DriverBL driverBl = new DriverBL();
    /**
     * This is a sample web service operation
     * @param txt
     * @return 
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "authDriver")
    public boolean authDriver(@WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        return this.driverBl.authDriver(email, password);
    }
        
    @WebMethod(operationName = "getBookingsByDriverId")
    public List<Booking> getBookingsByDriverId(@WebParam(name = "driverId") int driverId) {
        return this.driverBl.getBookingsByDriverId(driverId);
    }
    
    @WebMethod(operationName = "acceptDriverBooking")
    public boolean acceptDriverBooking(@WebParam(name = "bookingId") int bookingId) {
        return this.driverBl.acceptDriverBooking(bookingId);
    }
    
    @WebMethod(operationName = "rejectDriverBooking")
    public boolean rejectDriverBooking(@WebParam(name = "bookingId") int bookingId) {
        return this.driverBl.rejectBooking(bookingId);
    }
    
    @WebMethod(operationName = "completeBooking")
    public boolean completeBooking(@WebParam(name = "bookingId") int bookingId) {
        return this.driverBl.completeBooking(bookingId);
    }
    
    @WebMethod(operationName = "getDriverByEmail")
    public Driver getDriverByEmail(@WebParam(name = "email") String email) {
        return this.driverBl.getDriverByEmail(email);
    }
}
