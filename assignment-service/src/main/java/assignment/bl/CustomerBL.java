/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLDBUtil;
import assignment.src.Booking;
import assignment.src.Customer;
import assignment.src.Distance;
import assignment.src.Util;
import assignment.src.Vehicle;
import java.util.List;

/**
 *
 * @author thilan
 */
public class CustomerBL {
    private final Util util = new MySQLDBUtil();
    
    public boolean addCustomer(String name, String email, String password) {
        Customer customer = new Customer(0, name, email, password);
        return this.util.addCustomer(customer);
    }

    public boolean authCustomer(String email, String password) {
        return this.util.authCustomer(email, password);
    }

    public List<Vehicle> getVehicleByVehicleType(int vehicleType) {
        return this.util.getVehicleByVehicleType(vehicleType);
    }

    public Distance getDiatanceByDropAndPickCity(int pickCity, int dropCity) {
        return this.util.getDiatanceByDropAndPickCity(pickCity, dropCity);
    }

    public boolean acceptBooking(int userId, int vehicleId, int driverId, int pickCity, int dropcity, int vehicleType, String pickStreet, String dropStreet) {
        Booking booking = new Booking(0, vehicleId, pickCity, dropcity, userId, driverId, vehicleType, pickStreet, dropStreet);
        return this.util.acceptBooking(booking);
    }

    public List<Booking> getBookingsByUserId(int userId) {
        return this.util.getBookingsByUserId(userId);
    }

    public Customer getCustomerByEmail(String email) {
        return this.util.getCustomerByEmail(email);
    }
    
}
