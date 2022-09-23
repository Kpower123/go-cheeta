/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLDBUtil;
import assignment.src.Admin;
import assignment.src.Booking;
import assignment.src.Branch;
import assignment.src.Driver;
import assignment.src.Util;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.util.List;

/**
 *
 * @author kaniya
 */
public class AdminBL {
    private final Util util = new MySQLDBUtil();

    public boolean addBranch(String email, String mobile, String fixedLine, String addressLine, String city) {
        Branch branch = new Branch(0, email, mobile, fixedLine, addressLine, city);
        return this.util.addBranch(branch);
    }

    public List<Branch> getBranches() {
        return this.util.getBranches();
    }

    public Branch getBranchById(int branchId) {
        return this.util.getBranchById(branchId);
    }

    public boolean updateBranch(int branchId, String email, String mobile, String fixedLine, String addressLine, String city) {
        Branch branch = new Branch(branchId, email, mobile, fixedLine, addressLine, city);
        return this.util.updateBranch(branch);
    }

    public boolean deleteBranch(int branchId) {
        return this.util.deleteBranch(branchId);
    }

    public boolean addDriver(String firstName, String lastName, String mobile, String email, String dLicense, String nic) {
        Driver driver = new Driver(dLicense, nic, 0, firstName, lastName, email, mobile);
        return this.util.addDriver(driver);
    }

    public List<Driver> getDrivers() {
        return this.util.getDrivers();
    }

    public boolean deleteDriver(int driverId) {
        return this.util.deleteDriver(driverId);
    }

    public Driver getDriverById(int driverId) {
        return this.util.getDriverById(driverId);
    }

    public boolean updateDriver(int driverId, String firstName, String lastName, String mobile, String email, String dLicense, String nic) {
        Driver driver = new Driver(dLicense, nic, driverId, firstName, lastName, email, mobile);
        return this.util.updateDriver(driver);
    }

    public boolean addVehicleType(String name) {
        VehicleType type = new VehicleType(0, name);
        return this.util.addVehicleType(type);
    }

    public List<VehicleType> getVehicleTypes() {
        return this.util.getVehicleTypes();
    }

    public boolean deleteVehicleType(int typeId) {
        return this.util.deleteVehicleType(typeId);
    }

    public boolean updateVehicleType(int typeId, String name) {
        VehicleType type = new VehicleType(typeId, name);
        return this.util.updateVehicleType(type);
    }

    public VehicleType getVehicleTypeById(int typeId) {
        return this.util.getVehicleTypeById(typeId);
    }

    public boolean addVehicle(int driverId, int vehicleTypeId, String registerNo, double ratePerKm) {
        Vehicle vehicle = new Vehicle(0,driverId, vehicleTypeId, registerNo, ratePerKm); 
        return this.util.addVehicle(vehicle);
    }

    public List<Vehicle> getVehicles() {
        return this.util.getVehicles();
    }

    public Vehicle getVehicleById(int vehicleId) {
        return this.util.getVehicleById(vehicleId);
    }

    public boolean updateVehicle(int vehicleId, int driverId, int vehicleTypeId, String registerNo, double ratePerKm) {
        Vehicle vehicle = new Vehicle(vehicleId,driverId, vehicleTypeId, registerNo, ratePerKm); 
        return this.util.updateVehicle(vehicle);
    }

    public boolean deleteVehicle(int vehicleId) {
        return this.util.deleteVehicle(vehicleId);
    }

    public boolean addBranchAdmin(int branchId, String firstName, String lastName, String email, String mobile, String password) {
        Admin admin = new Admin(branchId, password, 0, firstName, lastName, email, mobile);
        return this.util.addBranchAdmin(admin);
    }

    public List<Admin> getBranchAdmin() {
        return this.util.getBranchAdmin();
    }

    public Admin getBranchAdminById(int adminId) {
        return this.util.getBranchAdminById(adminId);
    }

    public boolean updateBranchAdmin(int branchAdminId, int branchId, String firstName, String lastName, String email, String mobile, String password) {
        Admin admin = new Admin(branchAdminId, password, branchId, firstName, lastName, email, mobile);
        return this.util.updateBranchAdmin(admin);
    }

    public boolean deleteBranchAdmin(int branchId) {
        return this.util.deleteBranchAdmin(branchId);
    }

    public int getAllCustomerCount() {
        return this.util.getAllCustomerCount();
    }

    public int getAllBookingCount() {
        return this.util.getAllBookingCount();
    }

    public int getAllVehicleCount() {
        return this.util.getAllVehicleCount();
    }

    public int getAllDriverCount() {
        return this.util.getAllDriverCount();
    }

    public List<Booking> getLastBookings() {
        return this.util.getLastBookings();
    }

    public boolean authAdmin(String email, String password) {
        return this.util.authAdmin(email, password);
    }

    public Admin getAdminByEmail(String email) {
        return this.util.getAdminByEmail(email);
    }
}
