/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.CustomerBL;
import assignment.src.Booking;
import assignment.src.Distance;
import assignment.src.Driver;
import assignment.src.Vehicle;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author kaniya
 */
@WebService(serviceName = "CustomerWebService")
public class CustomerWebService {
    private CustomerBL cutomerBl = new CustomerBL();
    
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addCustomer")
    public boolean addCustomer(@WebParam(name = "name") String name, @WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        return this.cutomerBl.addCustomer(name, email, password);
    }
    
    @WebMethod(operationName = "authCustomer")
    public boolean authCustomer(@WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        return this.cutomerBl.authCustomer(email, password);
    }
    
    @WebMethod(operationName = "getVehicleByVehicleType")
    public List<Vehicle> getVehicleByVehicleType(@WebParam(name = "vehicleType") int vehicleType) {
        return this.cutomerBl.getVehicleByVehicleType(vehicleType);
    }
    
    @WebMethod(operationName = "getDiatanceByDropAndPickCity")
    public Distance getDiatanceByDropAndPickCity(@WebParam(name = "pickCity") int pickCity, @WebParam(name = "dropCity") int dropCity) {
        return this.cutomerBl.getDiatanceByDropAndPickCity(pickCity, dropCity);
    }
    
    @WebMethod(operationName = "acceptBooking")
    public boolean acceptBooking(@WebParam(name = "userId") int userId, @WebParam(name = "vehicle_id") int vehicle_id, @WebParam(name = "driverId") int driverId, @WebParam(name = "pickCity") int pickCity, @WebParam(name = "dropcity") int dropcity, @WebParam(name = "vehicleType") int vehicleType, @WebParam(name = "pickStreet") String pickStreet, @WebParam(name = "dropStreet") String dropStreet) {
        return this.cutomerBl.acceptBooking(userId, vehicle_id,  driverId, pickCity, dropcity, vehicleType, pickStreet, dropStreet);
    }
    
    @WebMethod(operationName = "getBookingsByUserId")
    public List<Booking> getBookingsByUserId(@WebParam(name = "userId") int userId) {
        return this.cutomerBl.getBookingsByUserId(userId);
    }
}
