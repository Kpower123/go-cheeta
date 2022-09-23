/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilan
 */
public class Driver extends Person{
    private String drivingLicens;
    private String nic;

    public Driver(String drivingLicens, String nic, int personID, String firstName, String lastName, String email, String mobile) {
        super(personID, firstName, lastName, email, mobile);
        this.drivingLicens = drivingLicens;
        this.nic = nic;
    }

    public String getDrivingLicens() {
        return drivingLicens;
    }

    public void setDrivingLicens(String drivingLicens) {
        this.drivingLicens = drivingLicens;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }
    
    
    
}
