/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

import java.util.List;

/**
 *
 * @author kaniya
 */
public interface Util {
    public boolean addUser(User user);
    public boolean authUser(String mobile, String password);
    
    
    
    // admin 
    public boolean addBranch(Branch branch);
    public List<Branch> getBranches();
    public Branch getBranchById(int branchId);
    public boolean updateBranch(Branch branch);
    public boolean deleteBranch(int branchId);
    public boolean addDriver(Driver driver);
    public List<Driver> getDrivers();
    public boolean deleteDriver(int driverId);
    public Driver getDriverById(int driverId);
    public boolean updateDriver(Driver driver);
    public boolean addVehicleType(VehicleType type);
    public List<VehicleType> getVehicleTypes();
    public boolean deleteVehicleType(int typeId);
    public boolean updateVehicleType(VehicleType type);
    public VehicleType getVehicleTypeById(int typeId);
    public boolean addVehicle(Vehicle vehicle);
    public List<Vehicle> getVehicles();
    public Vehicle getVehicleById(int vehicleId);
    public boolean updateVehicle(Vehicle vehicle);
    public boolean deleteVehicle(int vehicleId);
    public boolean addBranchAdmin(Admin admin);
    public List<Admin> getBranchAdmin();
    public Admin getBranchAdminById(int adminId);
    public boolean updateBranchAdmin(Admin admin);
    public boolean deleteBranchAdmin(int branchId);
    public int getAllCustomerCount();
    public int getAllBookingCount();
    public int getAllVehicleCount();
    public int getAllDriverCount();
    public List<Booking> getLastBookings();
    
    
    
    // customer 

    public boolean addCustomer(Customer customer);
    public boolean authCustomer(String email, String password);
    public List<Vehicle> getVehicleByVehicleType(int vehicleType);
    public Distance getDiatanceByDropAndPickCity(int pickCity, int dropCity);
    public boolean acceptBooking(Booking booking);
    public List<Booking> getBookingsByUserId(int userId);

    //driver
    public boolean authDriver(String email, String password);
    public List<Booking> getBookingsByDriverId(int driverId);
    public boolean acceptDriverBooking(int bookingId);
    public boolean rejectBooking(int bookingId);
    public boolean completeBooking(int bookingId);

    

    

    

    

    
}
