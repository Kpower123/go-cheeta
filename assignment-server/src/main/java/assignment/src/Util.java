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
}
