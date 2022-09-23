/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLDBUtil;
import assignment.src.Booking;
import assignment.src.Driver;
import assignment.src.Util;
import java.util.List;

/**
 *
 * @author thilan
 */
public class DriverBL {
    private final Util util = new MySQLDBUtil();

    public boolean authDriver(String email, String password) {
        return this.util.authDriver(email, password);
    }

    public List<Booking> getBookingsByDriverId(int driverId) {
        return this.util.getBookingsByDriverId(driverId);
    }

    public boolean acceptDriverBooking(int bookingId) {
        return this.util.acceptDriverBooking(bookingId);
    }

    public boolean rejectBooking(int bookingId) {
        return this.util.rejectBooking(bookingId);
    }

    public boolean completeBooking(int bookingId) {
        return this.util.completeBooking(bookingId);
    }

    public Driver getDriverByEmail(String email) {
        return this.util.getDriverByEmail(email);
    }
}
