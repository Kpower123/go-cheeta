/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment.db;

import assignment.src.Admin;
import assignment.src.Booking;
import assignment.src.Branch;
import assignment.src.Customer;
import assignment.src.Distance;
import assignment.src.Driver;
import assignment.src.Util;
import assignment.src.User;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author kaniya
 */
public class MySQLDBUtil implements Util {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLDBUtil() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/kanishka_db?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=kaniya1234");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    @Override
    public boolean addUser(User user) {
        try {

            this.stmt  = this.con.prepareCall("CALL `add_user`('"+user.getFirstName()+"','"+user.getLastName()+"','"+user.getMobile()+"','"+user.getEmail()+"','"+user.getPassword()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    @Override
    public boolean authUser(String mobile, String password) {
        try {
                      
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `authent_user`('"+mobile+"','"+password+"');");
           
            return rs.next();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
    // admin 

    @Override
    public boolean addBranch(Branch branch) {
        try {

            this.stmt  = this.con.prepareCall("CALL `add_branch`('"+branch.getEmail()+"','"+branch.getMobile()+"','"+branch.getFixedLine()+"','"+branch.getAddressLine()+"','"+branch.getCity()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    @Override
    public List<Branch> getBranches() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branches`();");

            List<Branch> branches = new ArrayList<>();

            while (rs.next()) {
                Branch branch = new Branch(rs.getInt("id"), rs.getString("email"), rs.getString("mobile"), rs.getString("fixed_line"), rs.getString("address"), rs.getString("city"));
                branches.add(branch);
            }
            
            return branches;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public Branch getBranchById(int branchId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branch_by_id`('"+branchId+"');");
        
            if(rs.next()) {
                Branch branch = new Branch(rs.getInt("id"), rs.getString("email"), rs.getString("mobile"), rs.getString("fixed_line"), rs.getString("address"), rs.getString("city"));
                return branch;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateBranch(Branch branch) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_branch`("+branch.getBranchId()+", '"+branch.getEmail()+"','"+branch.getMobile()+"','"+branch.getFixedLine()+"','"+branch.getAddressLine()+"','"+branch.getCity()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    
    public boolean deleteBranch(int branchId) {
        try {

            this.stmt  = this.con.prepareCall("CALL `delete_branch`("+branchId+");");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    public boolean addDriver(Driver driver){
        try {

            this.stmt  = this.con.prepareCall("CALL `add_driver`('"+driver.getFirstName()+"', '"+driver.getLastName()+"', '"+driver.getEmail()+"', '"+driver.getMobile()+"', '"+driver.getDrivingLicens()+"', '"+driver.getNic()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    @Override
    public List<Driver> getDrivers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_drivers`();");
        
            List<Driver> drivers = new ArrayList<>();

            while (rs.next()) {
                Driver driver = new Driver(rs.getString("license_id"), rs.getString("nic"), rs.getInt("id"), rs.getString("firstname"), rs.getString("firstname"), rs.getString("email"), rs.getString("mobile"));
                drivers.add(driver);
            }
            
            return drivers;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteDriver(int driverId) {
        try {
            
            this.stmt  = this.con.prepareCall("CALL `delete_driver`("+driverId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Driver getDriverById(int driverId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_driver_id`('"+driverId+"');");
        
            if(rs.next()) {
                Driver driver = new Driver(rs.getString("license_id"), rs.getString("nic"), rs.getInt("id"), rs.getString("firstname"), rs.getString("firstname"), rs.getString("email"), rs.getString("mobile"));
                return driver;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateDriver(Driver driver) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_driver`("+driver.getPersonID()+", '"+driver.getFirstName()+"', '"+driver.getLastName()+"', '"+driver.getEmail()+"', '"+driver.getMobile()+"', '"+driver.getDrivingLicens()+"', '"+driver.getNic()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addVehicleType(VehicleType type) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_vehicle_type`('"+type.getName()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
    @Override
    public List<VehicleType> getVehicleTypes() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_types`();");
        
            List<VehicleType> types = new ArrayList<>();

            while (rs.next()) {
                VehicleType type = new VehicleType(rs.getInt("id"), rs.getString("name"));
                types.add(type);
            }
            
            return types;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteVehicleType(int typeId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_vehicle_type`("+typeId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {            
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean updateVehicleType(VehicleType type) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_vehicle_type`("+type.getVehicleTypeId()+", '"+type.getName()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public VehicleType getVehicleTypeById(int typeId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_type_by_id`('"+typeId+"');");
        
            if(rs.next()) {
                VehicleType type = new VehicleType(rs.getInt("id"), rs.getString("name"));
                return type;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean addVehicle(Vehicle vehicle) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_vehicle`("+vehicle.getDriverId()+", '"+vehicle.getVehicleTypeId()+"', '"+vehicle.getRegisterNo()+"', '"+vehicle.getRatePerKm()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Vehicle> getVehicles() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicles`();");
        
            List<Vehicle> vehicles = new ArrayList<>();

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getInt("id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("register_no"), rs.getDouble("rate_per_km"));
                vehicles.add(vehicle);
            }
            
            return vehicles;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public Vehicle getVehicleById(int vehicleId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_by_id`('"+vehicleId+"');");
        
            if(rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getInt("id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("register_no"), rs.getDouble("rate_per_km"));
                return vehicle;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateVehicle(Vehicle vehicle) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_vehicle`("+vehicle.getDriverId()+", '"+vehicle.getVehicleTypeId()+"', '"+vehicle.getRegisterNo()+"', '"+vehicle.getRatePerKm()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean deleteVehicle(int vehicleId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_vehicle`("+vehicleId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addBranchAdmin(Admin admin) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_branch_admin`("+admin.getBranchId()+", '"+admin.getFirstName()+"', '"+admin.getLastName()+"', '"+admin.getMobile()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Admin> getBranchAdmin() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branch_admin`();");
        
            List<Admin> admins = new ArrayList<>();

            while (rs.next()) {
                Admin admin = new Admin(rs.getInt("id"), rs.getString("password"), rs.getInt("branch_id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                admins.add(admin);
            }
            
            return admins;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public Admin getBranchAdminById(int adminId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branch_admin_by_id`('"+adminId+"');");
        
            if(rs.next()) {
                Admin admin = new Admin(rs.getInt("id"), rs.getString("password"), rs.getInt("branch_id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                return admin;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateBranchAdmin(Admin admin) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_branch_admin`("+admin.getBranchId()+", "+admin.getBranchId()+", '"+admin.getFirstName()+"', '"+admin.getLastName()+"', '"+admin.getMobile()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean deleteBranchAdmin(int adminId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_branch_admin`("+adminId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public int getAllCustomerCount() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_customer_count`();");
        
            if(rs.next()) {
                return rs.getInt("customer_count");
            } else {
                return 0;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    
    @Override
    public int getAllBookingCount() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_booking_count`();");
        
            if(rs.next()) {
                return rs.getInt("booking_count");
            } else {
                return 0;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    
    @Override
    public int getAllVehicleCount() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_count`();");
        
            if(rs.next()) {
                return rs.getInt("vehicle_count");
            } else {
                return 0;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    
    @Override
    public int getAllDriverCount() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_driver_count`();");
        
            if(rs.next()) {
                return rs.getInt("driver_count");
            } else {
                return 0;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    
    @Override
    public List<Booking> getLastBookings() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_latest_10_bookings`();");
        
            List<Booking> bookings = new ArrayList<>();
            
            while (rs.next()) {
                Booking booking = new Booking(rs.getInt("id"), rs.getInt("vehicle_id"), rs.getInt("pick_city"), rs.getInt("drop_city"), rs.getInt("user_id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("pickStreet"), rs.getString("dropStreet"));
                booking.setStatus(rs.getInt("status"));
                bookings.add(booking);
            }
            
            return bookings;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    //customer 
    @Override
    public boolean addCustomer(Customer customer) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_customer`('"+customer.getName()+"', '"+customer.getEmail()+"', '"+customer.getPassword()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean authCustomer(String email, String password) {
        try {
                      
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `authent_customer`('"+email+"','"+password+"');");
           
            return rs.next();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Vehicle> getVehicleByVehicleType(int vehicleType) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_by_verhilce_id`('"+vehicleType+"');");
        
            List<Vehicle> vehicles = new ArrayList<>();
            
            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getInt("id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("register_no"), rs.getDouble("rate_per_km"));
                vehicles.add(vehicle);
            }
            
            return vehicles;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public Distance getDiatanceByDropAndPickCity(int pickCity, int dropCity) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_distance_by_drop_and_drop_id`('"+pickCity+"', '"+dropCity+"');");
        
            if(rs.next()) {
                Distance distance = new Distance(rs.getInt("id"),rs.getInt("pickup_city"), rs.getInt("drop_off_city"), rs.getDouble("distance"));
                return distance;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean acceptBooking(Booking booking) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_booking`("+booking.getPickCity()+", "+booking.getVehicleId()+", "+booking.getDropCity()+", "+booking.getUserId()+", "+booking.getDriverId()+", "+booking.getVehicleType()+", '"+booking.getPickStreet()+"', '"+booking.getDropstreet()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Booking> getBookingsByUserId(int userId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_booking_by_user_id`('"+userId+"');");
        
            List<Booking> bookings = new ArrayList<>();
            
            while (rs.next()) {
                Booking booking = new Booking(rs.getInt("id"), rs.getInt("vehicle_id"), rs.getInt("pick_city"), rs.getInt("drop_city"), rs.getInt("user_id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("pickStreet"), rs.getString("dropStreet"));
                booking.setStatus(rs.getInt("status"));
                bookings.add(booking);
            }
            
            return bookings;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    
    // driver
    @Override
    public boolean authDriver(String email, String password) {
        try {
                      
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `auth_driver`('"+email+"','"+password+"');");
           
            return rs.next();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Booking> getBookingsByDriverId(int driverId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_booking_by_driver_id`('"+driverId+"');");
        
            List<Booking> bookings = new ArrayList<>();
            
            while (rs.next()) {
                Booking booking = new Booking(rs.getInt("id"), rs.getInt("vehicle_id"), rs.getInt("pick_city"), rs.getInt("drop_city"), rs.getInt("user_id"), rs.getInt("driver_id"), rs.getInt("vehicle_type"), rs.getString("pickStreet"), rs.getString("dropStreet"));
                booking.setStatus(rs.getInt("status"));
                bookings.add(booking);
            }
            
            return bookings;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean acceptDriverBooking(int bookingId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `accept_booking`("+bookingId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean rejectBooking(int bookingId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `reject_booking`("+bookingId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean completeBooking(int bookingId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `complete_booking`("+bookingId+");");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}
