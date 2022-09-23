/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilan
 */
public class Booking {
    private int bookingId;
    private int vehicleId;
    private int pickCity;
    private int dropCity;
    private int userId;
    private int driverId;
    private int vehicleType;
    private String pickStreet;
    private String dropstreet;
    private int status;

    public Booking(int bookingId, int vehicleId, int pickCity, int dropCity, int userId, int driverId, int vehicleType, String pickStreet, String dropstreet) {
        this.bookingId = bookingId;
        this.vehicleId = vehicleId;
        this.pickCity = pickCity;
        this.dropCity = dropCity;
        this.userId = userId;
        this.driverId = driverId;
        this.vehicleType = vehicleType;
        this.pickStreet = pickStreet;
        this.dropstreet = dropstreet;
    }
    
    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getPickCity() {
        return pickCity;
    }

    public void setPickCity(int pickCity) {
        this.pickCity = pickCity;
    }

    public int getDropCity() {
        return dropCity;
    }

    public void setDropCity(int dropCity) {
        this.dropCity = dropCity;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getDriverId() {
        return driverId;
    }

    public void setDriverId(int driverId) {
        this.driverId = driverId;
    }

    public int getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(int vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getPickStreet() {
        return pickStreet;
    }

    public void setPickStreet(String pickStreet) {
        this.pickStreet = pickStreet;
    }

    public String getDropstreet() {
        return dropstreet;
    }

    public void setDropstreet(String dropstreet) {
        this.dropstreet = dropstreet;
    }
    
    public int isStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
