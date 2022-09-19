/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author kaniya
 */
public class Branch {
    private int branchId;
    private String email;
    private String mobile;
    private String fixedLine;
    private String addressLine;
    private String city;

    public Branch(int branchId, String email, String mobile, String fixedLine, String addressLine, String city) {
        this.branchId = branchId;
        this.email = email;
        this.mobile = mobile;
        this.fixedLine = fixedLine;
        this.addressLine = addressLine;
        this.city = city;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getFixedLine() {
        return fixedLine;
    }

    public void setFixedLine(String fixedLine) {
        this.fixedLine = fixedLine;
    }

    public String getAddressLine() {
        return addressLine;
    }

    public void setAddressLine(String addressLine) {
        this.addressLine = addressLine;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
