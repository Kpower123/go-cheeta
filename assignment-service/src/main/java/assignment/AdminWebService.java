/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.AdminBL;
import assignment.src.Admin;
import assignment.src.Booking;
import assignment.src.Branch;
import assignment.src.Driver;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author kaniya
 */
@WebService(serviceName = "AdminWebService")
public class AdminWebService {
    private final AdminBL adminBL = new AdminBL();

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addBranch")
    public boolean addBranch(@WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "fixedLine") String fixedLine, @WebParam(name = "addressLine") String addressLine, @WebParam(name = "city") String city) {
        return this.adminBL.addBranch(email, mobile, fixedLine, addressLine, city);
    }
    
    @WebMethod(operationName = "getBranches")
    public List<Branch> getBranches() {
        return this.adminBL.getBranches();
    }
    
    @WebMethod(operationName = "getBranchById")
    public Branch getBranchById(@WebParam(name = "branchId") int branchId) {
        return this.adminBL.getBranchById(branchId);
    }
    
    @WebMethod(operationName = "updateBranch")
    public boolean updateBranch(@WebParam(name = "branchId") int branchId, @WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "fixedLine") String fixedLine, @WebParam(name = "addressLine") String addressLine, @WebParam(name = "city") String city) {
        return this.adminBL.updateBranch(branchId, email, mobile, fixedLine, addressLine, city);
    }
    
    @WebMethod(operationName = "deleteBranch")
    public boolean deleteBranch(@WebParam(name = "branchId") int branchId) {
        return this.adminBL.deleteBranch(branchId);
    }
    
    @WebMethod(operationName = "addDriver")
    public boolean addDriver(@WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "mobile") String mobile,@WebParam(name = "email") String email,@WebParam(name = "dLicense") String dLicense,@WebParam(name = "nic") String nic){
        return this.adminBL.addDriver(firstName, lastName, mobile, email, dLicense, nic);
    }
    
    @WebMethod(operationName = "getDrivers")
    public List<Driver> getDrivers() {
        return this.adminBL.getDrivers();
    }
    
    @WebMethod(operationName = "deleteDriver")
    public boolean deleteDriver(@WebParam(name = "driverId") int driverId) {
        return this.adminBL.deleteDriver(driverId);
    }
    
    @WebMethod(operationName = "getDriverById")
    public Driver getDriverById(@WebParam(name = "driverId") int driverId) {
        return this.adminBL.getDriverById(driverId);
    }
    
    @WebMethod(operationName = "updateDriver")
    public boolean updateDriver(@WebParam(name = "driverId") int driverId, @WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "mobile") String mobile,@WebParam(name = "email") String email,@WebParam(name = "dLicense") String dLicense,@WebParam(name = "nic") String nic){
        return this.adminBL.updateDriver(driverId, firstName, lastName, mobile, email, dLicense, nic);
    }
    
    @WebMethod(operationName = "addVehicleType")
    public boolean addVehicleType(@WebParam(name = "type") String type) {
        return this.adminBL.addVehicleType(type);
    }
    
    @WebMethod(operationName = "getVehicleTypes")
    public List<VehicleType> getVehicleTypes() {
        return this.adminBL.getVehicleTypes();
    }
    
    @WebMethod(operationName = "deleteVehicleType")
    public boolean deleteVehicleType(int typeId) {
        return this.adminBL.deleteVehicleType(typeId);
    }
    
    @WebMethod(operationName = "updateVehicleType")
    public boolean updateVehicleType(@WebParam(name = "typeId") int typeId, @WebParam(name = "type") String type) {
        return this.adminBL.updateVehicleType(typeId, type);
    }
    
    @WebMethod(operationName = "getVehicleTypeById")
    public VehicleType getVehicleTypeById(@WebParam(name = "typeId") int typeId) {
        return this.adminBL.getVehicleTypeById(typeId);
    }
    
    @WebMethod(operationName = "addVehicle")
    public boolean addVehicle(@WebParam(name = "driverId") int driverId, @WebParam(name = "vehicleTypeId") int vehicleTypeId, @WebParam(name = "registerNo") String registerNo, @WebParam(name = "ratePerKm") double ratePerKm) {
        return this.adminBL.addVehicle(driverId, vehicleTypeId, registerNo, ratePerKm);
    }
       
    @WebMethod(operationName = "getVehicles")
    public List<Vehicle> getVehicles() {
        return this.adminBL.getVehicles();
    }
    
    @WebMethod(operationName = "getVehicleById")
    public Vehicle getVehicleById(@WebParam(name = "vehicleId") int vehicleId) {
        return this.adminBL.getVehicleById(vehicleId);
    }
    
    @WebMethod(operationName = "updateVehicle")
    public boolean updateVehicle(@WebParam(name = "vehicleId") int vehicleId, @WebParam(name = "driverId") int driverId, @WebParam(name = "vehicleTypeId") int vehicleTypeId, @WebParam(name = "registerNo") String registerNo, @WebParam(name = "ratePerKm") double ratePerKm) {
        return this.adminBL.updateVehicle(vehicleId, driverId, vehicleTypeId, registerNo, ratePerKm);
    }
        
    @WebMethod(operationName = "deleteVehicle")
    public boolean deleteVehicle(@WebParam(name = "vehicleId") int vehicleId) {
        return this.adminBL.deleteVehicle(vehicleId);
    }
    
    @WebMethod(operationName = "addBranchAdmin")
    public boolean addBranchAdmin(@WebParam(name = "branchId") int branchId, @WebParam(name = "firstName") String firstName, @WebParam(name = "lastName") String lastName, @WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        return this.adminBL.addBranchAdmin(branchId, firstName, lastName, email, mobile, password);
    }
    
    @WebMethod(operationName = "getBranchAdmin")
    public List<Admin> getBranchAdmin() {
        return this.adminBL.getBranchAdmin();
    }
    
    @WebMethod(operationName = "getBranchAdminById")
    public Admin getBranchAdminById(@WebParam(name = "adminId") int adminId) {
        return this.adminBL.getBranchAdminById(adminId);
    }
    
    @WebMethod(operationName = "updateBranchAdmin")
    public boolean updateBranchAdmin(@WebParam(name = "branchAdminId") int branchAdminId, @WebParam(name = "branchId") int branchId, @WebParam(name = "firstName") String firstName, @WebParam(name = "lastName") String lastName, @WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        return this.adminBL.updateBranchAdmin(branchAdminId, branchId, firstName, lastName, email, mobile, password);
    }
    
    @WebMethod(operationName = "deleteBranchAdmin")
    public boolean deleteBranchAdmin(@WebParam(name = "branchId") int branchId) {
        return this.adminBL.deleteBranchAdmin(branchId);
    }
    
    @WebMethod(operationName = "getAllDriverCount")
    public int getAllDriverCount() {
        return this.adminBL.getAllDriverCount();
    }
    
    @WebMethod(operationName = "getAllVehicleCount")
    public int getAllVehicleCount() {
        return this.adminBL.getAllVehicleCount();
    }
    
    @WebMethod(operationName = "getAllCustomerCount")
    public int getAllCustomerCount() {
        return this.adminBL.getAllCustomerCount();
    }
    
    @WebMethod(operationName = "getAllBookingCount")
    public int getAllBookingCount() {
        return this.adminBL.getAllBookingCount();
    }
    
    @WebMethod(operationName = "getLastBookings")
    public List<Booking> getLastBookings() {
        return this.adminBL.getLastBookings();
    }
    
    @WebMethod(operationName = "authAdmin")
    public boolean authAdmin(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        return this.adminBL.authAdmin(email, password);
    }
    
    @WebMethod(operationName = "getAdminByEmail")
    public Admin getAdminByEmail(@WebParam(name = "email") String email) {
        return this.adminBL.getAdminByEmail(email);
    }
}
